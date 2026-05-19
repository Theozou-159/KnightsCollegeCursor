# Theo Cursor Image2

Animated Theo cursor set for Windows, with one-click install and uninstall
scripts.

![Theo Cursor Image2 pointer preview](preview/pointer.gif)

## Download

Download the latest Windows ZIP from the GitHub Releases page, then extract it
before installing.

- Latest release:
  [Theo Cursor Image2 v1.0.0](https://github.com/Theozou-159/TheoCursorImage2/releases/tag/v1.0.0)
- Direct ZIP:
  [TheoCursorImage2-v1.0.0-Windows.zip](https://github.com/Theozou-159/TheoCursorImage2/releases/download/v1.0.0/TheoCursorImage2-v1.0.0-Windows.zip)

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

## More Previews

The `preview` folder includes GIF previews for each cursor state, plus review
images used during packaging.

- [Final contact sheet](preview/theo-cursor-final-contact-sheet.png)
- [32px review sheet](preview/theo-cursor-final-32px-review.png)
- [Hotspot review sheet](preview/theo-cursor-final-hotspot-review.png)
- [Dark-mode eye check](preview/theo-cursor-final-dark-mode-eye-check.png)

## Manual Install

If the one-click script does not work:

1. Right-click `TheoCursorImage2.inf`.
2. Choose **Install**.
3. Open **Mouse Properties** -> **Pointers**.
4. Choose `Theo Cursor Image2`.

You can also manually choose individual files from the `cursors` folder.

## License And Asset Notice

Installer and uninstall scripts are licensed under the MIT License. See
[`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md).

Theo character artwork, cursor images, animations, and preview assets are not
covered by the MIT License. They are fan-made derivative assets based on a
third-party game character. All rights to the original character and source
artwork belong to their respective owners. See
[`ASSET_NOTICE.md`](ASSET_NOTICE.md).

This project is unofficial, non-commercial, and not affiliated with the original rights holder. Please do not sell, commercially redistribute, or
reuse the artwork/assets as your own.

---

## 中文说明

Theo Cursor Image2 是一套给 Windows 使用的动态西奥鼠标指针包，包含一键安装和卸载脚本。

### 下载

请从 GitHub Releases 下载最新版 Windows ZIP，下载后先解压再安装。

- 最新 Release：
  [Theo Cursor Image2 v1.0.0](https://github.com/Theozou-159/TheoCursorImage2/releases/tag/v1.0.0)
- 直接下载 ZIP：
  [TheoCursorImage2-v1.0.0-Windows.zip](https://github.com/Theozou-159/TheoCursorImage2/releases/download/v1.0.0/TheoCursorImage2-v1.0.0-Windows.zip)

### 安装

1. 下载 `TheoCursorImage2-v1.0.0-Windows.zip`。
2. 解压 ZIP。
3. 双击 `Install-Theo-Cursors.bat`。
4. 如果 Windows Defender SmartScreen 弹出提示，请只在你信任这个包的情况下选择 **More info** -> **Run anyway**。

安装脚本会把鼠标文件复制到：

```text
%LOCALAPPDATA%\TheoCursorImage2\Cursors
```

然后为当前 Windows 用户应用 `Theo Cursor Image2` 鼠标方案。

### 卸载

双击 `Uninstall-Theo-Cursors.bat`。

卸载脚本会移除保存的 Theo 鼠标方案记录。鼠标文件会保留在
`%LOCALAPPDATA%\TheoCursorImage2`，以免当前方案仍在使用。请先切换回其他 Windows 鼠标方案，再手动删除该文件夹。

### 包含的鼠标状态

- 普通选择
- 帮助选择
- 后台运行
- 忙碌
- 精确选择
- 文本选择
- 不可用
- 垂直缩放
- 水平缩放
- 对角线缩放
- 移动
- 链接选择

### 更多预览

`preview` 文件夹里包含每个鼠标状态的 GIF 预览，以及打包时使用的 review 图片。

- [最终总览图](preview/theo-cursor-final-contact-sheet.png)
- [32px 检查图](preview/theo-cursor-final-32px-review.png)
- [热点检查图](preview/theo-cursor-final-hotspot-review.png)
- [深色模式眼睛检查图](preview/theo-cursor-final-dark-mode-eye-check.png)

### 手动安装

如果一键安装脚本无法运行：

1. 右键点击 `TheoCursorImage2.inf`。
2. 选择 **Install**。
3. 打开 **Mouse Properties** -> **Pointers**。
4. 选择 `Theo Cursor Image2`。

也可以从 `cursors` 文件夹里手动为每个鼠标状态选择对应文件。

### 许可与素材说明

安装和卸载脚本使用 MIT License，见 [`SCRIPT_LICENSE.md`](SCRIPT_LICENSE.md)。

Theo 角色图像、鼠标图像、动画和预览素材不适用 MIT License。这些素材是基于第三方游戏角色制作的非官方 fan-made derivative assets。原角色和原始素材的权利归对应权利方所有，见 [`ASSET_NOTICE.md`](ASSET_NOTICE.md)。

本项目为非官方、非商业、个人使用向项目，与原权利方无关联。请不要出售、商业再分发，或把其中的图像/素材当作自己的素材复用。
