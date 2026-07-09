# Changelog

## v1.2.0 - Paul And Celio Cursor Packs

- Added the Paul Windows animated cursor pack.
- Added the Celio Windows animated cursor pack.
- Packaged Paul and Celio as two all-sizes downloads:
  - `PaulCursor-v1.0.0-Windows-All-Sizes-by-Neilzou1.zip`
  - `CelioCursor-v0.1.0-Windows-All-Sizes-by-Neilzou1.zip`
- Each all-sizes ZIP contains `Default`, `1080p`, `2K`, `4K`, `Large105`, and
  `XL110` folders as complete installable cursor packs.
- Added Paul and Celio Pointer preview GIFs to the project landing page, next
  to the existing Diderich and Theo previews.
- Kept each Paul and Celio size variant as a separate Windows cursor scheme and
  install folder so sizes can be tested side by side.
- Verified the new release ZIPs with `unzip -t`.

## v1.1.1 - Diderich Size Variants

- Added size-specific Diderich Windows ZIPs with clear suffixes:
  `1080p`, `2K`, `4K`, `Large105`, and `XL110`.
- Renamed the original full-size Diderich package for release download as
  `DiderichCursor-v1.0.0-Windows-4K.zip`.
- Added smaller Diderich builds for 1080p and 2K screens.
- Added larger Diderich test builds for users who prefer a bigger cursor:
  `Large105` and `XL110`.
- Kept each Diderich size variant as a separate Windows cursor scheme and
  install folder so they can be tested side by side.
- Cleaned green edge fringe exposed by the enlarged Diderich builds and checked
  the variants on dark backgrounds.
- Left the Theo Windows package unchanged.

## v1.1.0 - Diderich Cursor

- Added the Diderich Windows animated cursor pack.
- Added 13 Diderich cursor states: Normal Select, Help Select, Working in
  Background, Busy, Precision Select, Text Select, Unavailable, Vertical Resize,
  Horizontal Resize, two Diagonal Resize states, Move, and Link Select.
- Added one-click install and uninstall scripts for the Diderich cursor scheme.
- Updated the Diderich installer to register the scheme without overwriting the
  current cursor scheme by default.
- Updated the Diderich installer to back up and preserve existing custom cursor
  schemes before adding Diderich, with a helper to restore the latest backup.
- Fixed the Diderich Link Select cursor so white fur, ear, face, and shirt
  details stay opaque on dark Windows themes.
- Fixed the Diderich Working in Background, Busy, and Unavailable cursors so
  white fur, paper, face, and tail details stay opaque on dark Windows themes.
- Added Diderich preview GIFs, a final contact sheet, 32px review sheet, hotspot
  review sheet, and dark background check.
- Updated the project landing page to Knights College Cursor while keeping the
  original Theo cursor pack available.

## v1.0.0 - Theo Cursor

- Initial Theo Windows animated cursor pack.
- Updated the Theo installer to back up and preserve existing custom cursor
  schemes before adding Theo.
- Updated the Theo installer to register the scheme without changing the
  current cursor by default; use `Apply-Theo-Cursors.bat` to switch immediately.
