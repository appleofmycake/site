# Requirements — specialiste-medecine-chinoise.be

Static site migration from WordPress to GitHub Pages, preserving the original look.

## Product
- One-page site with approach, therapist, pricing, FAQ, contact sections
- Blog page with 1 article (Les 8 Merveilleux Vaisseaux)
- Privacy policy page
- Contact info: +32 495 41 51 46, massage.mtc@gmail.com
- Address: Steenstraat 35, 1800 Koningslo-Vilvoorde

## Technical
- **Theme**: Stoic (child of Twenty Twenty-Five) at `wp-content/themes/stoic/theme.json`
- **Stack**: clean semantic HTML + hand-crafted CSS, hosted on GitHub Pages (`site` branch)
- **CSS approach**: hand-written CSS from theme.json design tokens (no WP CSS reuse, no PurgeCSS)
- **Fonts**: Mulish (Heading + Body) + Libre Baskerville (Standout/quotes), local in `/assets/`
- **URLs**: directory-based (`/blog/`, `/blog/merveilleux-vaisseaux/`, `/politique-de-confidentialite/`)
- **SEO**: JSON-LD schema, OG/twitter meta, sitemap.xml (updated for static paths)
- **Copyright**: 2026
- **Layout**: max-width 1200px, content-width 800px, breakpoint 840px, mobile max-width 720px

## Pages
| Page | File |
|---|---|
| Homepage | `index.html` |
| Blog listing | `blog/index.html` |
| Blog article | `blog/merveilleux-vaisseaux/index.html` |
| Privacy | `politique-de-confidentialite/index.html` |

## Assets
- `assets/logo.png` (20KB)
- `assets/portrait.webp` (76KB)
- `assets/Mulish-Variable.ttf` (208KB)
- `assets/LibreBaskerville-{Regular,Bold,Italic}.ttf` (~471KB total)
