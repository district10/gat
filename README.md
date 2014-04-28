gat
===


My Own Chinese Input Method, for Emacs.

Check the `gat-eim-SAMPLE.el` in this repo first, not `gat-eim-dvp.el` or `gat-eim-dvorak.el`, they are unsecessarily huge file! Your brower will freezzzzzee.

## See [Here for detail][misc-gat].

---

```
            |^\                      _________________/\_
           |~~~|--------------~~~~~~~~~~~~~~~~,xx.~~~~~~~~\
           |___|-------++++==|___|~~~~~|_____(x@x),;'//  ||
                             |~~~||    |~~~~~~~~~~~ //   ||
                              ~\(_(=)~~ ,-~-\       \  __/
                                 ~~~~~\[  \ ]\       \/
                                       `:  |'()       \\
                                         ~~~~\ \       \\
                ####     ##     #####         \ \       \\
               #    #   #  #      #            \ \       \\
               #       #    #     #             \ \       \\
               #  ###  ######     #              \ \       ||
               #    #  #    #     #               | \       ||
                ####   #    #     #               |  \_  ___||
                                                  \____( )-=~
```


---

### 起因

- 我打中文很不顺畅，主要原因是：

	 - 1. **选词太累太烦**；
	 - 2. 拼音捉急（我分不太清 ‘in’ 和 ‘ing’）；
	 - 3. **拼音重码太多，效率太低**，我也不会五笔。


---

### 经过

- 我想学五笔，还看到一些人推崇单字输入，这确实是个好的想法，单字输入掌握了后可以**盲打中文**，你能想象以后插个外接键盘闭眼躺床上码字吗~ 想想就有点小激动，眼睛也不累了。（最累不过死死找词，还怕自己错过去了， 草，那真是严重影响生活质量！）

- 为什么不直接用五笔单字？ 因为五笔单字一般都是四个键，而且考虑了拆字，所以编码效率不高。

- 我想要的是一个**单字输入法**，**变长码**，最常用字单字母输入，次者两个字母，等等。

- 外，**home row** 的按键太好按了，必须把常用字尽量放在home row 上！

- 外，dvorak 的左右手均衡也必须有，左右交替配合击键优于单手疲惫的上下飞舞。有人说没有证据表明 Dvarak 比 Qwerty 快，我只能说从设计上，他就不可能比 Qwerty 差。

- 外，无论什么输入法，请考虑清楚，**学习成本**和**使用成本**，你的目标和要求，决定了哪种汉字输入方案适合你。
     - 对于拼音，学习成本几乎没有（只要你会打字，会拼音），但是使用成本很高，你还会不断的被输入法码表更新拖着走，被蛋疼的选择折磨死。
     - 对于五笔，学习成本比拼音高太多。但借助拆字降低学习成本，还是能掌握。使用起来的成本就比拼音低很多，勉强可以达到流的状态。
	 - 对于gat，学习成本应该属于最高的那一类，但是如果你掌握了。打字应该（我还暂时不会呢，在学中）就完全是一种畅快的事。使用成本完全可以忽略。

- 因为没有找到别人的例子，我用脚本生成了按键对应汉字的 key-value 码表，开始了自己的单字输入历程。



---

### 一点注意

- 这是在 [neo-extended dvpe][neo-dvpe] 键盘布局下优化的单字输入法。

- **优化标准**：
    - 1. 按键效率；
    - 2. 汉字频率；
    - 3. 左右手交替与均衡。

- 如果你用别的键盘布局，可以修改我的源码生成特定键盘布局的版本。（我改也很容易，但是考虑到用 Qwerty 的人几乎没有概率会鸟这个输入法，我就不累自己了。Dvarak 用户知道了我的Neo-extended Dvpe， 也能看出来它好在哪里。）

- 外，这个输入法的码表是我用脚本生成的。
    - 1. 我只负责整体的概念设计，具体哪个字放哪，不是我，我也不觉得应该让是我来决定，那只会让自己陷入一种永远都无法满足的状态，整天都有改一两个键的冲动。
    - 2. 人工修改也有盲目性，你觉得 z 这个字母难打，想把它放 home row 上，这样当然更爽。但是显然不科学，要多方权衡，人工改，太不理性。
    - 3. 整体的设计上得当，就差不多达到了极优的效果。局部的细节可以适当忍受。


---

### 如何做？

- 下载我的gat-eim.el

- 在你的 Emacs 配置文件里加上 gat-eim.el, 为了方便可以加个函数切换输入法状态。还可以绑定快捷键，但这就三个字母的函数手敲就行，我就没绑定。

```
(defun gat ()
  "toggle between Gat and no input method"
  (interactive)
    (if (string= current-input-method "gat-input-method")
	(set-input-method nil)
        (set-input-method "gat-input-method")))
```



---

### 一些杂项

- 之前写的 Introduction: [gat intro][gat-intro]，这里有更多的编码原则的展示。

- It will be hard and painful to learn.

- I have some scripts to translate chinese to gat code, see [here][gat-trans].（这样才能方便的查字，和练习）

我的输入法是在 dvpe 上弄得，但是为了让广大的 dvp 用户感受这些按键组合，我转换了一下，具体看下面代码。完整见上方的脚本链接。

你可以很明显的看到左右手交替的节奏，以及大量的 home row 按键。

键码分为五个层次，对应1个2个。。5个字母（1..5 grams)。你会看到大量的五码，而且怎么着全是 te 什么的。。。要记住，所有的 5g 字只需要记忆三个字母，因为前两个字母是右手中指（t）加左手中指（e）。同理，4g 左手中指加右手中指加两个键,等等。

script 1

```
➜  scripts git:(master) ✗ ./gat-trans.sh example4.txt | ./dvpe2dvp.sh
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[tekhe][tecun][es][temkt][teaco][teimx][u][etud][i][teuhk][taq][teuhk][eh][tup][tsi][thk][u][ette][tetia][thx][tah][etmp]，[teuhu][tehem][tetut][ec]，[x][es][trx][etxc][teutx][tuc][teits][thx][tgq][thh][teose][tha]，[tesip][ette][etao]，[txa][tehon][tehhi][etab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][etei][tsp][tkh][teimx][tsr][tsr]，[tkh][teimx][tah]，[ettu][ettu][texah][texah]，[etwj][tsh][taq][teusa][u][es][tenoh][tetxm][etrp][tni][teohp][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][etyv][etyv][g][tehem]，[tnh][i][teuhk][tepca][teuru][tsk][etud][i][u][tao][tpv][teuhk][tps][etua][tkp][teete]，[x][etjh][tpd][teahk]。[ea][eu][tehet][tuc][terre][teheo][etmq][tur][n][eh][tuh]，[p][tqn][tho][etuk][tih][tearu][ethp][etij][etso][toq][q][y][teuse][er]。
```

script 2

```
➜  scripts git:(master) ✗ ./gat-trans2.sh "你的就是我的，我的还是我的" | ./dvpe2dvp.sh
{你too}{的u}{就ev}{是a}{我q}{的u}，{我q}{的u}{还tcx}{是a}{我q}{的u}
```

script 3

```
➜  scripts git:(master) ./gat-trans-pretty.sh example4.txt | ./dvpe2dvp.sh    
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[5khe][5cun][2s][5mkt][5aco][5imx][u][4ud][i][5uhk][3aq][5uhk][2h][3up][3si][3hk][u][4te][5tia][3hx][3ah][4mp]，[5uhu][5hem][5tut][2c]，[x][2s][3rx][4xc][5utx][3uc][5its][3hx][3gq][3hh][5ose][3ha]，[5sip][4te][4ao]，[3xa][5hon][5hhi][4ab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][4ei][3sp][3kh][5imx][3sr][3sr]，[3kh][5imx][3ah]，[4tu][4tu][5xah][5xah]，[4wj][3sh][3aq][5usa][u][2s][5noh][5txm][4rp][3ni][5ohp][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][4yv][4yv][g][5hem]，[3nh][i][5uhk][5pca][5uru][3sk][4ud][i][u][3ao][3pv][5uhk][3ps][4ua][3kp][5ete]，[x][4jh][3pd][5ahk]。[2a][2u][5het][3uc][5rre][5heo][4mq][3ur][n][2h][3uh]，[p][3qn][3ho][4uk][3ih][5aru][4hp][4ij][4so][3oq][q][y][5use][2r]。
```


- And I made some [typing tutorials][tutorials]. (I need to get used it too~)

- 今天下午对着自己的简易简易教程敲了一段时间，虽然现在还不能用 gat 敲出一行字，但是可以感觉到它的节奏和韵律，和 Dvorak 一样的左右交替。



---

log:
 
 - I already started it. See [Here][misc-gat].
 
 - I think this is done. I should put more time trying it.


[gat-eim]: https://github.com/district10/dotfiles/tree/master/emacs/dot_emacs.d/gat-eim.el
[misc-gat]: https://github.com/district10/misc/tree/master/gen-gat
[gat-intro]: https://github.com/district10/gat/intro.txt
[gat-trans]: https://github.com/district10/dotfiles/tree/master/scripts
[tutorials]: https://github.com/district10/misc/tree/master/typing-zh
[neo-dvpe]: https://github.com/district10/neo_keyboard_layout
