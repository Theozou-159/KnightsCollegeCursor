# Knights College Cursor

Animated Windows cursor packs for Knights College characters.

Created and packaged by **@Neilzou1**.

## Latest Update

**v1.2.0 brings Paul and Celio to your desktop.**  
Paul and Celio now have Windows animated cursor packs, each bundled as one
all-sizes download with `Default`, `1080p`, `2K`, `4K`, `Large105`, and `XL110`
folders inside.

## Pointer Preview

| Diderich | Theo | Paul | Celio |
| --- | --- | --- | --- |
| ![Diderich pointer preview](packs/diderich/preview/pointer.gif) | ![Theo pointer preview](preview/pointer.gif) | ![Paul pointer preview](packs/paul/preview/pointer.gif) | ![Celio pointer preview](packs/celio/preview/pointer.gif) |

## Download

Download from the GitHub Releases page, then extract the ZIP before installing.

- Latest release:
  [Knights College Cursor v1.2.0](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.2.0)
- New in v1.2.0:
  - `PaulCursor-v1.0.0-Windows-All-Sizes-by-Neilzou1.zip`
  - `CelioCursor-v0.1.0-Windows-All-Sizes-by-Neilzou1.zip`
- Existing Diderich downloads:
  [Knights College Cursor v1.1.1](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.1.1)
  includes:
  - `DiderichCursor-v1.0.0-Windows-1080p-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-2K-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-4K-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-Large105-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-XL110-by-Neilzou1.zip`
- Existing Theo download:
  - `TheoCursor-v1.0.0-Windows-by-Neilzou1.zip`

## Size Guide

Paul and Celio all-size ZIPs contain these folders:

- `Default`: the standard pack.
- `1080p`: smaller, for FHD screens.
- `2K`: medium-small, for QHD screens.
- `4K`: approved baseline scale, labeled for high-DPI screens.
- `Large105`: slightly larger than the baseline.
- `XL110`: largest test size with fit protection.

Each size uses its own Windows cursor scheme and install folder, so several
sizes can be installed and tested side by side.

## Install

1. Download the character ZIP from Releases.
2. Extract the ZIP.
3. For Paul or Celio, open the size folder you want.
4. Double-click the install `.bat` file:
   - Diderich: `Install-Diderich-Cursors.bat`
   - Theo: `Install-Theo-Cursors.bat`
   - Paul: `Install-Paul-Cursors.bat`
   - Celio: `Install-Celio-Cursors.bat`
5. If Windows Defender SmartScreen appears, choose **More info** -> **Run
   anyway** only if you trust this package.

The installers register their schemes without changing your current cursor by
default. To switch later, open **Mouse Properties** -> **Pointers**, choose the
character scheme, then click **Apply**. The optional `Apply-*-Cursors.bat`
scripts install and switch immediately.

The installers copy cursor files to the current user's local app data folder,
for example:

```text
%LOCALAPPDATA%\DiderichCursor\Cursors
%LOCALAPPDATA%\TheoCursor\Cursors
%LOCALAPPDATA%\PaulCursor\Cursors
%LOCALAPPDATA%\PaulCursor2K\Cursors
%LOCALAPPDATA%\CelioCursor\Cursors
%LOCALAPPDATA%\CelioCursor2K\Cursors
```

All installers back up the Windows cursor scheme list before registering a new
scheme:

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
迪德里奇、西奥、保罗和西里奥四套角色主题。

制作与打包：**@Neilzou1**。

### 最新更新

**v1.2.0 新增保罗和西里奥鼠标包。**  
这次保罗和西里奥各自做成一个 All Sizes ZIP，解压后里面直接有 `Default`、
`1080p`、`2K`、`4K`、`Large105` 和 `XL110` 几个尺寸文件夹。

### 指针预览

| 迪德里奇 | 西奥 | Paul | 西里奥 |
| --- | --- | --- | --- |
| ![Diderich pointer preview](packs/diderich/preview/pointer.gif) | ![Theo pointer preview](preview/pointer.gif) | ![Paul pointer preview](packs/paul/preview/pointer.gif) | ![Celio pointer preview](packs/celio/preview/pointer.gif) |

### 下载

请从 GitHub Releases 下载角色 ZIP，下载后先解压再安装。

- 最新 Release：
  [Knights College Cursor v1.2.0](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.2.0)
- v1.2.0 新增：
  - `PaulCursor-v1.0.0-Windows-All-Sizes-by-Neilzou1.zip`
  - `CelioCursor-v0.1.0-Windows-All-Sizes-by-Neilzou1.zip`
- 已有迪德里奇下载：
  [Knights College Cursor v1.1.1](https://github.com/Theozou-159/KnightsCollegeCursor/releases/tag/v1.1.1)
  里包含：
  - `DiderichCursor-v1.0.0-Windows-1080p-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-2K-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-4K-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-Large105-by-Neilzou1.zip`
  - `DiderichCursor-v1.0.0-Windows-XL110-by-Neilzou1.zip`
- 已有西奥下载：
  - `TheoCursor-v1.0.0-Windows-by-Neilzou1.zip`

### 尺寸说明

保罗和西里奥的 All Sizes ZIP 里包含这些文件夹：

- `Default`：标准尺寸。
- `1080p`：偏小，适合 FHD 屏幕。
- `2K`：中小尺寸，适合 QHD 屏幕。
- `4K`：基准尺寸，适合高 DPI 屏幕。
- `Large105`：比基准尺寸稍大。
- `XL110`：最大的测试尺寸，带防裁切处理。

每个尺寸都有独立 Windows 鼠标方案名和安装目录，可以同时安装，方便并排试。

### 安装

1. 从 Releases 下载角色 ZIP。
2. 解压 ZIP。
3. 如果是保罗或西里奥，先打开你想用的尺寸文件夹。
4. 双击安装 `.bat`：
   - 迪德里奇：`Install-Diderich-Cursors.bat`
   - 西奥：`Install-Theo-Cursors.bat`
   - 保罗：`Install-Paul-Cursors.bat`
   - 西里奥：`Install-Celio-Cursors.bat`
5. 如果 Windows Defender SmartScreen 弹出提示，请只在你信任这个包的情况下选择
   **More info** -> **Run anyway**。

安装脚本默认只注册鼠标方案，不会立刻改掉你当前正在用的鼠标。想切换时，请打开
**Mouse Properties** -> **Pointers**，在 **Scheme** 里选择对应角色方案，再点
**Apply**。如果想立刻切换，也可以运行 `Apply-*-Cursors.bat`。

安装脚本会在注册新方案前先备份 Windows 的鼠标方案列表：

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
