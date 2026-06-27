# Knights College Cursor

Animated Windows cursor packs for Knights College characters, with one-click
install and uninstall scripts.

## Latest Update

**v1.1.1 adds size-specific Diderich downloads.** Diderich now has clearly
named Windows ZIPs for 1080p, 2K, the original 4K-sized build, and two larger
test builds.

## Preview

### Diderich Cursor

![Diderich Cursor preview](packs/diderich/preview/diderich-help-thumbnail.gif)

### Theo Cursor

![Theo Cursor pointer preview](preview/pointer.gif)

## Download

Download from the GitHub Releases page, then extract the ZIP before installing.

- Latest release:
  [Knights College Cursor v1.1.1](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.1.1)
- Diderich Windows ZIPs:
  - `DiderichCursor-v1.0.0-Windows-1080p.zip` - smallest Diderich build.
  - `DiderichCursor-v1.0.0-Windows-2K.zip` - medium build for 1440p / 2K screens.
  - `DiderichCursor-v1.0.0-Windows-4K.zip` - original full-size Diderich build for 4K / high-DPI screens.
  - `DiderichCursor-v1.0.0-Windows-Large105.zip` - slightly larger than the original.
  - `DiderichCursor-v1.0.0-Windows-XL110.zip` - largest Diderich test build.
- Theo Windows ZIP:
  download `TheoCursor-v1.0.0-Windows.zip` from **Assets**.

## Install

1. Download the character ZIP from Releases.
2. Extract the ZIP.
3. Double-click the install `.bat` file:
   - Diderich: `Install-Diderich-Cursors.bat`
   - Theo: `Install-Theo-Cursors.bat`
4. If Windows Defender SmartScreen appears, choose **More info** -> **Run
   anyway** only if you trust this package.

The installers copy cursor files to the current user's local app data folder:

```text
%LOCALAPPDATA%\DiderichCursor\Cursors
%LOCALAPPDATA%\DiderichCursor2K\Cursors
%LOCALAPPDATA%\DiderichCursor1080p\Cursors
%LOCALAPPDATA%\DiderichCursorLarge\Cursors
%LOCALAPPDATA%\DiderichCursorXL\Cursors
%LOCALAPPDATA%\TheoCursor\Cursors
```

The Diderich size variants, Diderich original build, and Theo installer register
their schemes without changing your current cursor scheme. To switch, open
**Mouse Properties** -> **Pointers**, choose the character scheme, then click
**Apply**. The optional apply scripts switch immediately:

- Diderich original / 4K: `Diderich Cursor`
- Diderich 2K: `Diderich Cursor 2K`
- Diderich 1080p: `Diderich Cursor 1080p`
- Diderich Large105: `Diderich Cursor Large`
- Diderich XL110: `Diderich Cursor XL`

- Diderich: `Apply-Diderich-Cursors.bat`
- Theo: `Apply-Theo-Cursors.bat`

Both installers back up the Windows cursor scheme list before registering a
new scheme:

```text
%LOCALAPPDATA%\KnightsCollegeCursor\CursorSchemeBackups
```

If a test install ever leaves the Windows scheme list in a bad state, run
`Restore-Cursor-Scheme-Backup.bat` from the character package to restore the
latest saved scheme list.

## Included Cursor States

Each character pack includes:

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

Diderich:

- [Final contact sheet](packs/diderich/preview/diderich-cursor-final-contact-sheet.png)
- [32px review sheet](packs/diderich/preview/diderich-cursor-final-32px-review.png)
- [Hotspot review sheet](packs/diderich/preview/diderich-cursor-final-hotspot-review.png)
- [Dark background check](packs/diderich/preview/diderich-cursor-final-dark-mode-check.png)

Theo:

- [Final contact sheet](preview/theo-cursor-final-contact-sheet.png)
- [32px review sheet](preview/theo-cursor-final-32px-review.png)
- [Hotspot review sheet](preview/theo-cursor-final-hotspot-review.png)
- [Dark-mode eye check](preview/theo-cursor-final-dark-mode-eye-check.png)

## Manual Install

If the one-click script does not work:

1. Right-click the `.inf` file.
   - Diderich: `DiderichCursor.inf`
   - Theo: `TheoCursor.inf`
2. Choose **Install**.
3. Open **Mouse Properties** -> **Pointers**.
4. Choose the matching cursor scheme.

You can also manually choose individual files from the `cursors` folder.

## License And Asset Notice

Installer and uninstall scripts are licensed under the MIT License. See
[`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md).

Character artwork, cursor images, animations, and preview assets are not covered
by the MIT License. They are fan-made derivative assets based on third-party
game characters. All rights to the original characters and source artwork belong
to their respective owners. See [`ASSET_NOTICE.md`](ASSET_NOTICE.md).

This project is unofficial, non-commercial, and not affiliated with the original
rights holder. Please do not sell, commercially redistribute, or reuse the
artwork/assets as your own.

---

## 中文说明

Knights College Cursor 是一套给 Windows 使用的角色动态鼠标指针包，目前包含
迪德里奇和西奥两套角色主题。

### 版本更新

**v1.1.1 新增多个带明确后缀的迪德里奇尺寸包。** 现在可以按 1080p、2K、
原始 4K 尺寸，以及两个更大的测试尺寸来下载。

### 下载

请从 GitHub Releases 下载角色 ZIP，下载后先解压再安装。

- 最新 Release：
  [Knights College Cursor v1.1.1](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.1.1)
- 迪德里奇 Windows ZIP：
  - `DiderichCursor-v1.0.0-Windows-1080p.zip` - 最小尺寸。
  - `DiderichCursor-v1.0.0-Windows-2K.zip` - 适合 1440p / 2K 屏的中等尺寸。
  - `DiderichCursor-v1.0.0-Windows-4K.zip` - 原始 4K / 高 DPI 尺寸。
  - `DiderichCursor-v1.0.0-Windows-Large105.zip` - 比原始尺寸稍大一点。
  - `DiderichCursor-v1.0.0-Windows-XL110.zip` - 最大测试尺寸。
- 西奥 Windows ZIP：
  在 **Assets** 里下载 `TheoCursor-v1.0.0-Windows.zip`。

### 安装

1. 从 Releases 下载角色 ZIP。
2. 解压 ZIP。
3. 双击安装 `.bat`：
   - 迪德里奇：`Install-Diderich-Cursors.bat`
   - 西奥：`Install-Theo-Cursors.bat`
4. 如果 Windows Defender SmartScreen 弹出提示，请只在你信任这个包的情况下选择
   **More info** -> **Run anyway**。

安装脚本会把鼠标文件复制到当前用户的本地目录：

```text
%LOCALAPPDATA%\DiderichCursor\Cursors
%LOCALAPPDATA%\DiderichCursor2K\Cursors
%LOCALAPPDATA%\DiderichCursor1080p\Cursors
%LOCALAPPDATA%\DiderichCursorLarge\Cursors
%LOCALAPPDATA%\DiderichCursorXL\Cursors
%LOCALAPPDATA%\TheoCursor\Cursors
```

迪德里奇各尺寸包和西奥安装脚本默认只注册对应方案，不会改变你当前正在用的鼠标
方案。想切换时，请打开 **Mouse Properties** -> **Pointers**，在 **Scheme** 里
选择对应角色方案，再点 **Apply**。迪德里奇各尺寸的方案名如下：

- 原始 / 4K：`Diderich Cursor`
- 2K：`Diderich Cursor 2K`
- 1080p：`Diderich Cursor 1080p`
- Large105：`Diderich Cursor Large`
- XL110：`Diderich Cursor XL`

如果想立刻切换，也可以运行对应的 Apply 脚本：

- 迪德里奇：`Apply-Diderich-Cursors.bat`
- 西奥：`Apply-Theo-Cursors.bat`

两个安装脚本都会在注册新方案前先备份 Windows 的鼠标方案列表：

```text
%LOCALAPPDATA%\KnightsCollegeCursor\CursorSchemeBackups
```

如果测试安装后 Windows 的方案列表异常，可以运行对应角色包里的
`Restore-Cursor-Scheme-Backup.bat`，恢复最近一次保存的方案列表。

### 包含的鼠标状态

每套角色包都包含：

- 普通选择
- 帮助选择
- 后台运行
- 忙碌
- 精确选择
- 文本选择
- 不可用
- 垂直缩放
- 水平缩放
- 对角线缩放 NW-SE
- 对角线缩放 NE-SW
- 移动
- 链接选择

### 手动安装

如果一键安装脚本无法运行：

1. 右键点击 `.inf` 文件。
   - 迪德里奇：`DiderichCursor.inf`
   - 西奥：`TheoCursor.inf`
2. 选择 **Install**。
3. 打开 **Mouse Properties** -> **Pointers**。
4. 选择对应的鼠标方案。

也可以从 `cursors` 文件夹里手动为每个鼠标状态选择对应文件。

### 许可与素材说明

安装和卸载脚本使用 MIT License，见 [`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md)。

角色图像、鼠标图像、动画和预览素材不适用 MIT License。这些素材是基于第三方
游戏角色制作的非官方 fan-made derivative assets。原角色和原始素材的权利归对应
权利方所有，见 [`ASSET_NOTICE.md`](ASSET_NOTICE.md)。

本项目为非官方、非商业、个人使用向项目，与原权利方无关联。请不要出售、商业再
分发，或把其中的图像/素材当作自己的素材复用。
