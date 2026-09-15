// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  // Inline CSS so dist/resume/index.html prints correctly from file:// (see scripts/resume-pdf.mjs).
  // Emit archive.html instead of archive/index.html; Firebase `cleanUrls` then serves it at /archive.
  build: { inlineStylesheets: 'always', format: 'file' },
});
