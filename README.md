# Theo Cursor Image2

Animated Theo cursor set for Windows, with one-click install and uninstall
scripts.

![Theo Cursor Image2 preview](preview/theo-cursor-final-contact-sheet.png)

## Download

Download the latest Windows ZIP from the GitHub Releases page, then extract it
before installing.

## Install

1. Download the latest `TheoCursorImage2-v1.0.0-Windows.zip` from Releases.
2. Extract the ZIP.
3. Double-click `Install-Theo-Cursors.bat`.
4. If Windows Defender SmartScreen appears, choose **More info** -> **Run anyway**
   only if you trust this package.

The installer copies cursor files to:

```text
%LOCALAPPDATA%\TheoCursorImage2\Cursors
```

Then it applies the `Theo Cursor Image2` pointer scheme for the current Windows
user.

## Uninstall

Double-click `Uninstall-Theo-Cursors.bat`.

The uninstall script removes the saved Theo cursor scheme entry. Cursor files are
kept under `%LOCALAPPDATA%\TheoCursorImage2` in case the scheme is still active.
Choose another Windows pointer scheme before deleting that folder manually.

## Included Cursor States

- Normal Select
- Help Select
- Working in Background
- Busy
- Precision Select
- Text Select
- Unavailable
- Vertical Resize
- Horizontal Resize
- Diagonal Resize
- Move
- Link Select

## Manual Install

If the one-click script does not work:

1. Right-click `TheoCursorImage2.inf`.
2. Choose **Install**.
3. Open **Mouse Properties** -> **Pointers**.
4. Choose `Theo Cursor Image2`.

You can also manually choose individual files from the `cursors` folder.

## Preview Files

The `preview` folder includes GIF previews, the final contact sheet, a 32px review
sheet, a dark-mode eye check, and a hotspot review sheet.

## License And Asset Notice

Installer and uninstall scripts are licensed under the MIT License. See
[`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md).

Theo character artwork, cursor images, animations, and preview assets are not
covered by the MIT License. They are fan-made derivative assets based on a
third-party game character. All rights to the original character and source
artwork belong to their respective owners. See
[`ASSET_NOTICE.md`](ASSET_NOTICE.md).

This project is unofficial, non-commercial, and not affiliated with or endorsed
by the original rights holder. Please do not sell, commercially redistribute, or
reuse the artwork/assets as your own.
