# Izania repo instructions

The Git root is this folder (`outputs`). When a game update changes `index.html`:

1. Update `Playtest-README.txt` if controls or features changed.
2. Run `update-and-publish.ps1` from this folder to rebuild `Izania-Playtest.zip`, commit all game changes, and push them to `main`.
3. The post-commit hook pushes commits automatically. GitHub Actions then republishes GitHub Pages from the new commit.

Do not commit intermediate or broken game states. Keep the public repo limited to the game, tester instructions, and publishing files.
