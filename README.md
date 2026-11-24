# 果冻冰海 · Jelly Arctic

一小块极地的海，冻在一方透明果冻里。按一下水面 —— 它会回应你。

在线游玩：https://air-sage.github.io/jelly-sea/

单文件网页（`index.html`），用 three.js（CDN 加载）渲染，无需构建。

## 玩法

- 在水面按住拖动划出波纹
- 拖走皮划艇、抓住侧面拉扯果冻、轻敲玻璃
- 空白处拖动旋转视角，滚轮缩放
- 右侧面板切换天气（白昼 / 飘雪 / 极光），调节果冻软度、波浪阻尼、潮位，呼唤鲸鱼

## 本地运行

任意静态服务器即可，例如：

```sh
ruby -run -e httpd . -p 8124
```

然后打开 http://localhost:8124/

## 发布

改完 `index.html` 后运行 `sh deploy.sh`：提交并推送到 `main`，GitHub Pages 约一分钟后更新。
