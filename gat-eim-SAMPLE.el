(require 'quail)
(require 'cl)

;; Define Package
(quail-define-package
 "gat-input-method" "Chinese" "Gat_Zh_")

(quail-define-rules
 ("i" ?的)
 ("o" ?一)
 ("a" ?是)
 ("h" ?在)


;;            ####     ##    #    #  #####   #       ######
;;           #        #  #   ##  ##  #    #  #       #
;;            ####   #    #  # ## #  #    #  #       #####
;;                #  ######  #    #  #####   #       #
;;           #    #  #    #  #    #  #       #       #
;;            ####   #    #  #    #  #       ######  ######


 ("teokx" ?麇)
 ("teoxu" ?鹮)
 ("teoxk" ?酞)
)

(provide 'gat-eim)
