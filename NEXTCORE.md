# NextCore theme for RustDesk

This fork carries the NextCore visual theme on top of official RustDesk releases.
It is built by [RDGEN](https://github.com/nextcoreti/rdgen) when a `*-nextcore`
version is chosen in the panel. RustDesk is AGPL-3.0; these changes are public
for that reason.

## Branches

- `nextcore/<version>` — the official tag `<version>` plus the NextCore commits.
  Example: `nextcore/1.5.3` = tag `1.5.3` + theme.
- `master` is the untouched upstream mirror. Do **not** push tags to this fork:
  upstream workflows (`flutter-tag.yml`, `fdroid.yml`) run on version tags and
  would start a full official release build.

## What the theme changes

All colors and the ID font live in **`flutter/lib/nextcore/brand.dart`**. To change
the palette, edit that file only.

Upstream files touched (they only point at `NcBrand`):

| File | Change |
|---|---|
| `flutter/lib/common.dart` | accent, grayBg, light/dark theme colors (hover, scaffold, text, hint, divider, dark bg2) |
| `flutter/lib/desktop/widgets/tabbar_widget.dart` | selected / unselected tab colors (light + dark) |
| `flutter/lib/desktop/pages/desktop_home_page.dart` | status card gradient, password icons, ID and password font |
| `flutter/lib/desktop/pages/connection_page.dart` | bottom bar dot: ready / not ready |
| `flutter/lib/consts.dart` | `kColorWarn` (service stopped + peer offline) |
| `flutter/lib/common/widgets/peer_card.dart` | peer online dot |
| `flutter/lib/common/widgets/peer_tab_page.dart` | tabs show their name instead of an icon |
| `src/lang/pt_BR.rs` | home texts and short tab names |
| `flutter/pubspec.yaml` + `flutter/assets/fonts/` | Inter SemiBold (SIL OFL 1.1, license in `Inter-OFL.txt`) |

## Porting to a new RustDesk version

```sh
git fetch upstream --no-tags "refs/tags/<new>:refs/remotes/upstream/v<new>"
git checkout -b nextcore/<new> upstream/v<new>
git cherry-pick <first-nextcore-commit>^..nextcore/<old>
```

Conflicts only happen where upstream edited the same lines. Resolve by keeping
upstream's code and re-pointing the value at `NcBrand.*`. Then build one client in
RDGEN and check the home screen before offering the version in the panel.
