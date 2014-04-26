gat
===


My Own Chinese Input Method, for Emacs. Check it in my [emacs configuration: gat-eim.el][gat-eim], there is a copy(sample) in this repo. But will not be updated.

###### 这是在 [neo-extended dvpe][neo-dvpe] 键盘布局下优化的单字输入法，优化标准：1. 按键效率； 2. 汉字频率 3. 左右手交替与均衡。如果你用别的键盘布局，可以修改我的源码生成特定键盘布局的版本。


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
