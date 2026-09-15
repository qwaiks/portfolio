// @ts-check
import { defineConfig } from 'astro/config';

import sitemap from '@astrojs/sitemap';

// The site's public address. Used for canonical URLs, the sitemap, robots.txt and social previews.
// 👉 When the custom domain is live on Firebase Hosting, change this one line (e.g. 'https://ntim.dev') and redeploy.
export const SITE_URL = 'https://ntim-dev.web.app';

// https://astro.build/config
export default defineConfig({
  site: SITE_URL,
  trailingSlash: 'never',

  // Inline CSS so dist/resume.html prints correctly from file:// (see scripts/resume-pdf.mjs).
  // Emit archive.html instead of archive/index.html; Firebase `cleanUrls` then serves it at /archive.
  build: { inlineStylesheets: 'always', format: 'file' },

  integrations: [
    sitemap({
      // Keep the printable résumé and 404 out of search results; the PDF is linked from the home page instead.
      filter: (page) => !/\/(resume|404)(\.html)?$/.test(page),
      serialize: (item) => ({ ...item, url: item.url.replace(/\.html$/, '') }),
    }),
  ],
});
