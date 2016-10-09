;;(require 'evil)
(evil-mode 1)
;;这个是打开文件后默认进入emacs模式 
(setq evil-default-state 'emacs) 

;; C-o按键调用vim功能（就是临时进入normal模式，然后自动回来） 
(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state)
