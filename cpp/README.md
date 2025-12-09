```bash
xmake create xxxx
```

- vcpkg: [中文](https://learn.microsoft.com/zh-cn/vcpkg/get_started/get-started?pivots=shell-powershell) | [en](https://learn.microsoft.com/en-us/vcpkg/get_started/get-started?pivots=shell-powershell)

[add a vcpkg package](https://github.com/xmake-io/xmake/discussions/4896)


## Vscode config

采用插件 clangd

```lua
add_rules("plugin.compile_commands.autoupdate",{outputdir =".vscode"})
```


```json
{
    "files.associations": {
        "optional": "cpp"
    },
    "clangd.arguments": [
        "--compile-commands-dir=.vscode",
        "--header-insertion=never",
    ],
}
```

