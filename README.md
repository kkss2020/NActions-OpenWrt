# Actions-OpenWrt
[Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

[会本地编译的情况下，怎么用GitHub Actions云编译？](https://github.com/coolsnowwolf/lede/issues/2288)

[Applications 添加插件应用说明-L大](https://www.right.com.cn/forum/thread-3682029-1-1.html)


二次编译：
```bash
cd lede
git pull
./scripts/feeds update -a && ./scripts/feeds install -a
make defconfig
make -j8 download
make -j$(($(nproc) + 1)) V=s
```
如果需要重新配置：
```bash
rm -rf ./tmp && rm -rf .config
make menuconfig
make -j$(($(nproc) + 1)) V=s
```


复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl + C 即可）
```bash
cd openwrt && make menuconfig
```
导出差异文件。
```bash
./scripts/diffconfig.sh > seed.config
cat seed.config
```

完成后按快捷键Ctrl+D或执行exit命令退出
## Acknowledgments

- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Cowtransfer](https://cowtransfer.com)
- [Mikubill/cowtransfer-uploader](https://github.com/Mikubill/cowtransfer-uploader)
- [WeTransfer](https://wetransfer.com/)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [hyird/Openwrt-AutoBuild](https://github.com/hyird/Action-Openwrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/openwrt)
