# Decisions Log

## 2026-06-16T16:54:00Z
- **Decision**: download fonts locally to `/assets/` for offline dev and no CORS issues
- **Decision**: directory-based URLs (`/blog/`, `/politique-de-confidentialite/`) for GitHub Pages clean URLs
- **Decision**: keep `main` branch empty, `site` branch holds all site files
- **Decision**: preserve all WP meta tags (OG, twitter, description, JSON-LD) and generate static sitemap.xml

## 2026-06-17T08:00:00Z
- **Decision**: clean rewrite from scratch instead of patching WP CSS soup. Reason: 77KB CSS was unfixable (PurgeCSS safelist too fragile, layout classes deeply interdependent)
- **Decision**: flat HTML (no Jinja templates) for 4 pages. Header/footer duplication (~30 lines x 4 pages) is acceptable for a rarely-changing site.
- **Decision**: extract design tokens from Stoic child theme's `theme.json` + `style.css` + `functions.php` instead of fetching WP CSS
- **Decision**: parent theme is Twenty Twenty-Five (not Twenty Twenty-Four as initially assumed). Child theme: Stoic at `wp-content/themes/stoic/`
- **Decision**: standout heading style only changes COLOR (to accent-1), NOT font family. Libre Baskerville is only for quote/testimonial text.
- **Decision**: `strong` weight = 800 (from theme), not default 700
- **Decision**: mobile nav = full-screen overlay (position: fixed) with CSS checkbox hack + 5 lines of JS to close on link click
- **Decision**: buttons default to filled terracotta, hover slightly grays out via `color-mix()`. Outline is the explicit exception.
- **Decision**: cards need inner content max-width (600px) + margin-inline: auto for centering
- **Decision**: map embed uses `<iframe>` with `aspect-ratio: 1` (square), corrected address spelling
- **Decision**: `text-wrap: pretty` on body to prevent orphan words globally
- **Decision**: scrape and include the blog article (blog/merveilleux-vaisseaux/) too, 4 pages total
- **Decision**: repo will be squashed to a single clean commit before final deploy (remove STATUS/DECISIONS/REQUIREMENTS/HANDOFF.md)
