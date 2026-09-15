// Prints dist/resume.html to public/Kwaku-Owusu-Ansa-Resume.pdf with headless Chrome.
// Usage: npm run resume   (builds the site first)
import { spawn } from 'node:child_process';
import { existsSync, mkdtempSync, rmSync, statSync, copyFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

const root = resolve(import.meta.dirname, '..');
const input = join(root, 'dist/resume.html');
const output = join(root, 'public/Kwaku-Owusu-Ansa-Resume.pdf');

const candidates = [
  process.env.CHROME_PATH,
  '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
  '/Applications/Chromium.app/Contents/MacOS/Chromium',
  '/usr/bin/google-chrome',
  '/usr/bin/chromium',
].filter(Boolean);
const chrome = candidates.find((p) => existsSync(p));
if (!chrome) {
  console.error('Chrome not found. Set CHROME_PATH to your Chrome/Chromium binary.');
  process.exit(1);
}
if (!existsSync(input)) {
  console.error('dist/resume.html missing — run `npm run build` first.');
  process.exit(1);
}

const profileDir = mkdtempSync(join(tmpdir(), 'resume-chrome-'));
const tmpPdf = join(profileDir, 'resume.pdf');
const proc = spawn(
  chrome,
  [
    '--headless=new',
    '--disable-gpu',
    '--no-first-run',
    '--no-pdf-header-footer',
    '--virtual-time-budget=5000',
    `--user-data-dir=${profileDir}`,
    `--print-to-pdf=${tmpPdf}`,
    pathToFileURL(input).href,
  ],
  { stdio: 'ignore' }
);

// Headless Chrome sometimes keeps running after writing the file, so poll for it and stop Chrome ourselves.
const started = Date.now();
let lastSize = -1;
const timer = setInterval(() => {
  const size = existsSync(tmpPdf) ? statSync(tmpPdf).size : 0;
  if (size > 0 && size === lastSize) {
    clearInterval(timer);
    copyFileSync(tmpPdf, output);
    console.log(`Wrote ${output} (${Math.round(size / 1024)} KB)`);
    // Clean up the throwaway Chrome profile once Chrome has actually exited.
    proc.once('exit', () => {
      try {
        rmSync(profileDir, { recursive: true, force: true, maxRetries: 3, retryDelay: 200 });
      } catch {}
    });
    proc.kill();
  } else if (Date.now() - started > 60_000) {
    clearInterval(timer);
    proc.kill();
    console.error('Timed out waiting for Chrome to print the PDF.');
    process.exit(1);
  }
  lastSize = size;
}, 1000);
