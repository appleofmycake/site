# Status — specialiste-medecine-chinoise.be

Last updated: 2026-06-17T08:50:00Z

## Done
- [x] GitHub repo `appleofmycake/site` with empty `main` + `site` branch
- [x] CNAME + `.gitignore` (excludes `CLAUDE.md`) on `site`
- [x] Fonts downloaded locally (`assets/Mulish-Variable.ttf`, `assets/LibreBaskerville-*.ttf`)
- [x] Homepage clean rewrite: semantic HTML (231 lines) + hand-crafted CSS (8.6KB)
- [x] Design tokens extracted from Stoic child theme (`theme.json` + `style.css` + `functions.php`)
- [x] Full-screen mobile nav overlay (CSS checkbox + JS close)
- [x] JSON-LD updated (wp-content paths → /assets/ paths, removed SearchAction)
- [x] Skill created: `/wp-to-static` (WP to static site conversion playbook)

## Now
- [ ] Rewrite `blog/index.html` (blog listing page)
- [ ] Scrape + rewrite `blog/merveilleux-vaisseaux/index.html` (article page, not yet in repo)
- [ ] Rewrite `politique-de-confidentialite/index.html`
- [ ] Update `sitemap.xml` after all pages done
- [ ] SEO audit: verify title, desc, og, schema, canonical on all pages

## Next
- [ ] Squash repo to single clean commit (remove STATUS/DECISIONS/REQUIREMENTS.md, keep only site files)
- [ ] Force-push clean `site` branch
- [ ] Enable GitHub Pages (needs admin access on `appleofmycake`)
- [ ] DNS: point `specialiste-medecine-chinoise.be` to GitHub Pages IPs
- [ ] Favicon

## Later
- [ ] Google Maps embed optimization (lighter alternative to iframe?)

## Session Notes
- All decisions in DECISIONS.md 2026-06-17
- CSS went from 77KB WP blob → 8.6KB. HTML from 533 lines of WP class soup → 231 lines semantic.
- Multiple visual iteration rounds needed: breathing room, card centering, button fills, font weights, mobile nav. Screenshots side-by-side was the most effective workflow.
- The blog article page (`blog/merveilleux-vaisseaux/`) exists on the live WP site but was never scraped into the repo.
