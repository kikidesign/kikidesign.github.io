# kikidesign.github.io

GitHub Pages 个人导航站。核心页面 `Navigation.html`（个人书签导航，多分组外链），由 Hurst 家具电商 HTML 模板（Bootstrap 3.3.6 + jQuery 3.6 + slick/nivo/nicescroll 等插件）改造而来。

## 约定
- **页面定制一律写在 Navigation.html 页面内 `<style>` 块**（带 `!important` 覆盖），`css/`、`js/` 下是全站共用的压缩主题文件（style.min.css / main.min.js 等），不要直接改。
- 改动需本地开页面验证滚动/响应式无异常后再提交。

## 已踩坑
- **吸顶抖动（2026-09-03 已修）**：main.min.js 在 scroll 事件里给 `#sticky-menu` 切换 `.sticky`（`position:fixed`）。页面内容较矮时，fixed 后文档高度 ≤ 视口 → scrollTop 被钳回 0 → 反向切换 → header 回流变高 → 再触发……fixed/回流循环导致滚动抖动。修法：页面内覆盖 `#sticky-menu.sticky { position: static !important; background: none !important; box-shadow: none !important; }` 禁用本页吸顶。其他页面若复用此模板且内容矮，同样适用。吸顶禁用后内容贴屏底滚不动 → `.wrapper` 加 `padding-bottom: 80px` 留滚动余量。
