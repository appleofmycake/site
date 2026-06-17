# /// script
# requires-python = ">=3.13"
# dependencies = ["jinja2"]
# ///
"""Render Jinja templates from src/ into dist/."""

import shutil
from pathlib import Path

from jinja2 import Environment, FileSystemLoader

ROOT = Path(__file__).parent
SRC = ROOT / "src"
DIST = ROOT / "dist"
STATIC = ["style.css", "assets", "CNAME", "sitemap.xml"]


def build():
    if DIST.exists():
        shutil.rmtree(DIST)
    DIST.mkdir()

    env = Environment(
        loader=FileSystemLoader(SRC),
        keep_trailing_newline=True,
        trim_blocks=True,
        lstrip_blocks=True,
    )

    for template_path in sorted(SRC.rglob("*.html")):
        if template_path.name.startswith("_"):
            continue
        rel = template_path.relative_to(SRC)
        out = DIST / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(env.get_template(str(rel)).render())

    for name in STATIC:
        src = ROOT / name
        if not src.exists():
            continue
        dst = DIST / name
        if src.is_dir():
            shutil.copytree(src, dst)
        else:
            shutil.copy2(src, dst)


if __name__ == "__main__":
    build()
    pages = list(DIST.rglob("*.html"))
    print(f"Built {len(pages)} pages into dist/")
    for p in sorted(pages):
        print(f"  {p.relative_to(DIST)}")
