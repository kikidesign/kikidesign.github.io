---
layout: post
title:  "warning: /var/folders/p4/"
date:   2015-11-24 11:22:00
categories: iOS git
---

warning: /var/folders/p4/z7zy68r92hd3p5ry5g2v3k_8rlwzzr/C/org.llvm.clang.dalmo/ModuleCache/1TXZDLI9N2EMV/Foundation-3DFYNEBRQSXST.pcm: No such file or directory。  

作为一个有洁癖的我反正是不能忍，出现警告的大致原因跟我上面提到的开启Bitcode，.dSYM文件不能用来符号化有关，Xcode试图去创建dSYM文件，但是你又不需要。    
解决方法：  
1.	Build Settings ——>Build Options——>Debug Information Format  
2.	Debug下的DWARF with dsYM File改成DWARF  
3.	Release下的还是之前默认的DWARF with dsYM File不变  
