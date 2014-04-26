(add-to-list 'load-path "~/.emacs.d/data/gat-tables/")

(require 'quail)
(require 'cl)

;; Define Package
(quail-define-package
 "gat-input-method" "Chinese" "Gat_Zh_")

;; Load Char Tables
;; (require 'table-0001-1000) ;; Most Common Zh Chars
;; (load "table-0001-6000")

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
