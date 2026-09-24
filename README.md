# 博士开题报告 LaTeX 工程（ucasproposal 模板）

题目：**基于智能体的漏洞挖掘与修复技术研究**

基于 [mohuangrui/ucasproposal](https://github.com/mohuangrui/ucasproposal) 国科大开题报告模板构建。

## 目录结构

```
proposal_ucas/
├── Thesis.tex            # 主文件（编译入口）
├── Style/                # 模板样式文件（勿修改）
│   ├── ucasproposal.cls
│   ├── ucasproposal.cfg
│   ├── artratex.sty
│   └── artracom.sty      # 化学宏包已注释（本课题不需要）
├── Biblio/
│   ├── ref.bib           # 参考文献（92 条，与正文引用一致）
│   └── gbt7714-numerical.bst  # GB/T 7714 数字格式
├── Img/
│   └── ucas_logo.pdf     # 校徽
└── Tex/
    ├── Frontinfo.tex     # 封面信息（★ 填写个人信息）
    ├── Frontmatter.tex   # 封面 + 目录
    ├── Mainmatter.tex    # 章节引入
    ├── 01-background.tex # 一、选题的背景及意义
    ├── 02-related.tex    # 二、国内外本学科领域的发展现状与趋势
    ├── 03-content.tex    # 三、课题主要研究内容、预期目标
    ├── 04-approach.tex   # 四、拟采用的研究方法、技术路线、实验方案及其可行性分析
    ├── 05-foundation.tex # 五、已有科研基础与所需的科研条件
    └── 06-schedule.tex   # 六、研究工作计划与进度安排
```

## 编译

### 本地

```bash
xelatex Thesis && bibtex Thesis && xelatex Thesis && xelatex Thesis
```

### Overleaf

上传本压缩包，主文件选 `Thesis.tex`，编译器选 **XeLaTeX**。

## 待办

1. ~~填写 `Tex/Frontinfo.tex`~~（已完成：张小北 / 202518018629028 / 侯锐 研究员 / 计算机系统结构）。
2. **文献核实**：`Biblio/ref.bib` 中标注 `% TODO-VERIFY` 的条目（P2IM、StateAFL、SyzTrust、FirmAgent、SWE-bench、OpenHands、RRBench、mozillafirefox150）的 venue/年份为最佳推测，投稿/答辩前务必逐条核对。旧版 2.1/2.2 遗留的 17 条未引用文献（FIE、Karonte、Laelaps、FirmVenom、CONFU、Operation Mango、FIRE、OctopusTaint、UVScan、Ember-IO、FirmHybridFuzz、FirmPilot、LATTE、SPR、Prophet、CapGen、RustForger）已清理，.bib 与正文引用一致（92 条）。
3. **已核实条目**：2.3 节（漏洞修复验证）全部 24 篇（源自《PPT的发展现状和综述》文献表）、2.2 节全部 32 篇（源自《2.3-基于智能体的漏洞自动修复-深化修订版.md》，含 Kumushi/PVBench/PatchBench 等 2026 年新工作）、FirmAgent（NDSS 2026）、LATTE（arXiv:2310.08275）、BinReX（USENIX Security 2026）、2.1 节全部 28 篇（源自《2.1-基于智能体的语义漏洞挖掘-深化修订版.md》；PANGOLIN/FIRMENSTEIN/Bond=USENIX Sec 2026，Abacus=ASPLOS 2026，LISA=ISSRE 2026，TransFuzz=OOPSLA 2026，deepSURF=IEEE S&P 2026，InferROI=ICSE 2025，BSFuzzer/ProtocolGuard=NDSS 2026，TyPatch=arXiv:2609.13728；mozillafirefox150 缺报告链接、保留 TODO 注释）、本人 ISSTA 2026 empirical 论文。
