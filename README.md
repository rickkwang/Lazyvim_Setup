# Lazyvim_Setup

这是一个完整的 LazyVim 配置，基于 [LazyVim](https://github.com/LazyVim/LazyVim) 模板。

## 概述

LazyVim 是一个流行的 Neovim 配置，旨在提供一个功能齐全、开箱即用的编辑器体验，同时保持高度的可定制性。

## 安装要求

- Neovim >= 0.9.0
- Git
- 一些插件可能需要额外的工具，如 `ripgrep`、`fd` 等

## 安装步骤

1. 备份你当前的 Neovim 配置（如果存在）:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. 将此配置复制到 Neovim 配置目录:
   ```bash
   cp -r ./LazyVim_Config ~/.config/nvim
   ```

3. 启动 Neovim:
   ```bash
   nvim
   ```

4. 首次启动时，LazyVim 会自动安装所有插件。请耐心等待安装完成。

## 主要功能

- **现代UI**: 使用符合现代标准的界面
- **LSP支持**: 内置语言服务器协议支持
- **代码补全**: 智能代码补全
- **语法检查**: 实时语法检查
- **调试支持**: 集成调试功能
- **版本控制**: Git 集成
- **项目管理**: 项目切换功能

## 常用快捷键

- `<leader>` - 空格键 (Space)
- `<leader>ff` - 查找文件
- `<leader>fg` - 查找内容 (grep)
- `<leader>fr` - 最近打开的文件
- `<leader>fn` - 新建文件
- `<leader>l` - 打开 Lazy 插件管理器
- `<leader>u` - UI 设置菜单
- `<leader>x` - 问题/终端切换

## 配置说明

- `init.lua`: 主要的初始化文件
- `lua/`: 自定义 Lua 模块
- `stylua.toml`: 代码格式化配置
- `lazy-lock.json`: 锁定的插件版本
- `.neoconf.json`: Neoconf 配置

## 自定义

你可以根据需要修改配置：
1. 修改 `lua/` 目录下的相关文件来自定义功能
2. 在 `init.lua` 中添加全局设置
3. 使用 `:Lazy` 命令管理插件

## 故障排除

如果遇到问题：
1. 运行 `:checkhealth` 检查配置
2. 使用 `:Lazy` 查看插件状态
3. 查看 Neovim 日志 `:messages`
4. 重新同步插件: `:Lazy sync`

## 卸载

要卸载此配置：
1. 删除配置目录: `rm -rf ~/.config/nvim`
2. 恢复备份（如果存在）: `mv ~/.config/nvim.backup ~/.config/nvim`

## 许可证

此配置基于 LazyVim 项目，许可证请参见 LICENSE 文件。
