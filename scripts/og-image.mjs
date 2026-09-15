// Renders scripts/og.html → public/og.png (1200×630) and scripts/icon.html → public/apple-touch-icon.png (180×180)
// with headless Chrome. Usage: npm run og   (re-run after changing the domain in astro.config.mjs)
import { spawn } from 'node:child_process';
import { copyFileSync, existsSync, mkdtempSync, rmSync, statSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { SITE_URL } from '../astro.config.mjs';

const root = resolve(import.meta.dirname, '..');
const chrome = [
  process.env.CHROME_PATH,
  '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
  '/Applications/Chromium.app/Contents/MacOS/Chromium',
  '/usr/bin/google-chrome',
  '/usr/bin/chromium',
]
  .filter(Boolean)
  .find((p) => existsSync(p));
if (!chrome) {
  console.error('Chrome not found. Set CHROME_PATH to your Chrome/Chromium binary.');
  process.exit(1);
}

const domain = new URL(SITE_URL).host;

/** Screenshot a local HTML file at a fixed size. Headless Chrome may not exit on its own, so poll for the file. */
function screenshot(htmlFile, width, height, output, query = '') {
  return new Promise((done, fail) => {
    const profileDir = mkdtempSync(join(tmpdir(), 'og-chrome-'));
    const tmpPng = join(profileDir, 'shot.png');
    const url = pathToFileURL(join(root, 'scripts', htmlFile)).href + query;
    const proc = spawn(
      chrome,
      [
        '--headless=new',
        '--disable-gpu',
        '--no-first-run',
        '--hide-scrollbars',
        '--force-device-scale-factor=1',
        `--window-size=${width},${height}`,
        '--virtual-time-budget=5000',
        `--user-data-dir=${profileDir}`,
        `--screenshot=${tmpPng}`,
        url,
      ],
      { stdio: 'ignore' }
    );
    const started = Date.now();
    let lastSize = -1;
    const timer = setInterval(() => {
      const size = existsSync(tmpPng) ? statSync(tmpPng).size : 0;
      if (size > 0 && size === lastSize) {
        clearInterval(timer);
        copyFileSync(tmpPng, output);
        proc.once('exit', () => {
          try {
            rmSync(profileDir, { recursive: true, force: true, maxRetries: 3, retryDelay: 200 });
          } catch {}
        });
        proc.kill();
        console.log(`Wrote ${output}`);
        done();
      } else if (Date.now() - started > 60_000) {
        clearInterval(timer);
        proc.kill();
        fail(new Error(`Timed out rendering ${htmlFile}`));
      }
      lastSize = size;
    }, 1000);
  });
}

await screenshot('og.html', 1200, 630, join(root, 'public/og.png'), `?domain=${encodeURIComponent(domain)}`);
await screenshot('icon.html', 180, 180, join(root, 'public/apple-touch-icon.png'));
process.exit(0);
