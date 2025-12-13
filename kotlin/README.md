采用 [Amper](https://amper.org/latest/)

用 [cli](https://amper.org/latest/cli/)

代理问题

在[网站](https://packages.jetbrains.team/maven/p/amper/amper/org/jetbrains/amper/amper-cli/0.9.1/)上下载： amper-cli-0.9.1-dist.tgz 然后放到指定目录下 (by [Wrapper script & provisioning](https://amper.org/latest/cli/provisioning/))

```bash
mkdir -p \
$HOME/amper-bootstrap/org/jetbrains/amper/amper-cli/0.9.1

mv amper-cli-0.9.1-dist.tgz \
$HOME/amper-bootstrap/org/jetbrains/amper/amper-cli/0.9.1/
```

设置环境变量，避免下载

```bash
export AMPER_BOOTSTRAP_CACHE_DIR="$HOME/amper-bootstrap"
```

然后运行即可

```bash
./amper -v build
```

