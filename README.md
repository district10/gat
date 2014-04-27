gat
===


My Own Chinese Input Method, for Emacs. 

Check it in my [emacs configuration: gat-eim.el][gat-eim], there is a copy(sample) in this repo. But will not be updated.



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
	 
	 - 1. 选词太累太烦； 
	 - 2. 拼音捉急（我分不太清 ‘in’ 和 ‘ing’）； 
	 - 3. 拼音重码太多，效率太低，我也不会五笔。
	 
	 
---	 

### 经过

- 我想学五笔，还看到一些人推崇单字输入，这确实是个好的想法，单字输入掌握了后可以盲打中文，你能想象以后插个外接键盘闭眼躺床上码字吗~ 想想就有点小激动，眼睛也不累了。（最累不过死死找词，还怕自己错过去了， 草，那真是严重影响生活质量！）

- 为什么不直接用五笔单字？ 因为五笔单字一般都是四个键，而且考虑了拆字，所以编码效率不高。

- 我想要的是一个单字输入法，变长码，最常用字单字母输入，次者两个字母，等等。

- 外，home row 的按键太好按了，必须把常用字尽量放在home row 上！

- 外，dvorak 的左右手均衡也必须有，左右交替配合击键优于单手疲惫的上下飞舞。有人说没有证据表明 Dvarak 比 Qwerty 快，我只能说从设计上，他就不可能比 Qwerty 差。

- 外，无论什么输入发，请考虑清楚，学习成本和使用成本，你的目标和要求，决定了哪种汉字输入方案适合你。
     - 对于拼音，学习成本几乎没有（只要你会打字，会拼音），但是使用成本很高，你还会不断的被输入法码表更新拖着走，被蛋疼的选择折磨死。
     - 对于五笔，学习成本比拼音高太多。但借助拆字降低学习成本，还是能掌握。使用起来的成本就比拼音低很多，勉强可以达到流的状态。
	 - 对于gat，学习成本应该属于最高的那一类，但是如果你掌握了。打字应该（我还暂时不会呢，在学中）就完全是一种畅快的事。使用成本完全可以忽略。

- 因为没有找到别人的例子，我用脚本生成了按键对应汉字的 key-value 码表，开始了自己的单字输入历程。


---

### 一点注意

- 这是在 [neo-extended dvpe][neo-dvpe] 键盘布局下优化的单字输入法。

- 优化标准：
    - 1. 按键效率； 
    - 2. 汉字频率 
    - 3. 左右手交替与均衡。
    
- 如果你用别的键盘布局，可以修改我的源码生成特定键盘布局的版本。


---

### 一些杂项

- Introduction: [gat intro][gat-intro]

- It will be hard and painful to learn. 

- I have some script to trans chinese to gat code, see [here][gat-trans].（这样才能方便的查字，和练习）

（键盘布局是 neo，过两天弄成 qwerty 再发一遍）

style 1
```
➜  scripts git:(master) ✗ ./gat-search.sh "你的就是我的，我的还是我的"
{你,too}{的,i}{就,ev}{是,a}{我,q}{的,i}{我,q}{的,i}{还,tcx}{是,a}{我,q}{的,i}
```

style 2
```
➜  scripts git:(master) ✗ ./gat-trans.sh example2.txt
我的勇气，够吗？锤子问学姐。
[q][i][tesum][etao]，[tesht][etxv]？[terlu][trx][tiu][ep][teknu]。
学姐哭得一塌糊涂。我们在底下哭得一塌糊涂。
[ep][teknu][tenni][tam][o][tesax][teusa][texlx]。[q][y][h][teono][tur][tenni][tam][o][tesax][teusa][texlx]。
大宽哭得最响。我骂他神经病，大宽哭着说操，老子二十六了，还没谈过恋爱。
[g][etkj][tenni][tam][tmu][tenen]。[q][teert][p][etti][ej][etui]，[g][etkj][tenni][tik][tar][etvu]，[teser][trx][tuo][tlo][tesin][n]，[tcx][tix][teiri][tic][teeon][teonh]。
然后我想起来，我也没谈过恋爱。
[tro][tim][q][trc][tlx][el]，[q][tos][tix][teiri][tic][teeon][teonh]。
我们继续抱头痛哭。
[q][y][teari][tesit][telxn][etia][twk][tenni]。
```

- And I made some [typing tutorials][tutorials]. (I need to get used it too~)



---

log: 
 - I already started it. See [Here][misc-gat]. 
 - I think this is done. I should put more time trying it.


[gat-eim]: https://github.com/district10/dotfiles/tree/master/emacs/dot_emacs.d/gat-eim.el
[misc-gat]: https://github.com/district10/misc/tree/master/gen-gat
[gat-intro]: https://github.com/district10/gat/intro.txt
[gat-trans]: https://github.com/district10/dotfiles/tree/master/scripts/gat-trans.sh
[tutorials]: https://github.com/district10/misc/tree/master/typing-zh
[neo-dvpe]: https://github.com/district10/neo_keyboard_layout
