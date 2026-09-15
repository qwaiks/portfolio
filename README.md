# Kwaku Owusu-Ansa — Portfolio

Static portfolio site built with [Astro](https://astro.build).

## Develop

```bash
npm install
npm run dev      # http://localhost:4321
npm run build    # outputs static site to dist/
```

## Editing content

All text, projects, experience and skills live in `src/data/profile.ts`.
The résumé PDF (`public/Kwaku-Owusu-Ansa-Resume.pdf`) is generated from `src/pages/resume.astro`
using the same data. After editing, regenerate it (needs Google Chrome installed):

```bash
npm run resume
```

Project thumbnails: add a 16:9 screenshot to `public/images/projects/` and set `image: '/images/projects/<file>.png'`
on the project in `profile.ts`; otherwise a generated tile is shown.

## Structure

- `src/pages/index.astro` — home page and scroll-spy nav
- `src/pages/archive.astro` — full project table with tag filters
- `src/pages/resume.astro` — one-page printable résumé (also viewable at /resume)
- `src/components/Sidebar.astro` — sticky name / role / nav / social links
- `src/components/Section.astro` — numbered section heading
- `src/styles/global.css` — colours (emerald accent), fonts and dot-grid background

Layout inspired by [Brittany Chiang](https://brittanychiang.com) (credited in the footer).

## SEO

Titles, descriptions, canonical URLs, sitemap, robots.txt, structured data and the social preview image are built in.
See [docs/SEO.md](docs/SEO.md) for how it works, connecting a custom domain, and Google Search Console.

## Deploy

The site is live at **https://kwakuntim.com**, hosted on Firebase Hosting (project `ntim-dev`) via GitHub Actions:

- **Pull request** → `.github/workflows/firebase-hosting-pull-request.yml` builds the site and deploys a temporary
  preview channel; the preview URL is posted as a comment on the PR.
- **Merge / push to `main`** → `.github/workflows/firebase-hosting-merge.yml` builds and deploys to the live site.

Both run `npm ci && npm run build` on Node 22 and publish `dist/` (see `firebase.json`). The résumé PDF is committed in
`public/`, so CI doesn't need Chrome — run `npm run resume` locally and commit the PDF when you change it.

The previous Flutter web version of the portfolio is preserved on the `flutter-portfolio` branch.
