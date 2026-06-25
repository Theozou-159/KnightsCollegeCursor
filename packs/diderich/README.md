# Diderich Cursor

Animated Diderich cursor set for Windows, packaged as part of the Night's
College Cursor collection.

![Diderich Cursor preview](preview/diderich-help-thumbnail.gif)

## Install

1. Extract the ZIP first.
2. Double-click `Install-Diderich-Cursors.bat`.
3. If Windows Defender SmartScreen appears, choose **More info** -> **Run
   anyway** only if you trust this package.

The installer copies cursor files to:

```text
%LOCALAPPDATA%\DiderichCursor\Cursors
```

Then it applies the `Diderich Cursor` pointer scheme for the current Windows
user.

## Uninstall

Double-click `Uninstall-Diderich-Cursors.bat`.

The uninstall script removes the saved Diderich cursor scheme entry. Cursor
files are kept under `%LOCALAPPDATA%\DiderichCursor` in case the scheme is still
active. Choose another Windows pointer scheme before deleting that folder
manually.

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
- Diagonal Resize NW-SE
- Diagonal Resize NE-SW
- Move
- Link Select

## More Previews

- [Final contact sheet](preview/diderich-cursor-final-contact-sheet.png)
- [32px review sheet](preview/diderich-cursor-final-32px-review.png)
- [Hotspot review sheet](preview/diderich-cursor-final-hotspot-review.png)
- [Dark background check](preview/diderich-cursor-final-dark-mode-check.png)

## Manual Install

If the one-click script does not work:

1. Right-click `DiderichCursor.inf`.
2. Choose **Install**.
3. Open **Mouse Properties** -> **Pointers**.
4. Choose `Diderich Cursor`.

You can also manually choose individual files from the `cursors` folder.

## License And Asset Notice

Installer and uninstall scripts are licensed under the MIT License. See
[`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md).

Diderich character artwork, cursor images, animations, and preview assets are
not covered by the MIT License. They are fan-made derivative assets based on a
third-party game character. All rights to the original character and source
artwork belong to their respective owners. See
[`ASSET_NOTICE.md`](ASSET_NOTICE.md).

This project is unofficial, non-commercial, and not affiliated with the original
rights holder. Please do not sell, commercially redistribute, or reuse the
artwork/assets as your own.
