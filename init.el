(defun loadconf (name)
  (let ((path (concat "~/.emacs.d/" name ".el")))
    (load path)))

(loadconf "color")
(loadconf "option")
(loadconf "keymap")
(loadconf "elpa")
(loadconf "powerline")
(loadconf "yasnippet")
(loadconf "evil")
;(loadconf "org-publish")
; auto-complete
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")
;(require 'auto-complete)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/ac-dict/")
;(add-to-list 'ac-user-dictionary-files "~/.emacs.d/el-get/auto-complete/dict/guotf.dict")
;(require 'auto-complete-config)
;;; 结束
;
;;; 开启 auto-complete-clang
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete-clang/")
;(require 'auto-complete-clang)  
;;;(setq ac-clang-auto-save t)  
;;; 设置不自动启动
;(setq ac-auto-start nil)  
;;; 设置响应时间 0.5
;(setq ac-quick-help-delay 0.5)  
;;;(ac-set-trigger-key "TAB")  
;;; 提示快捷键为 ctrl-return
;(define-key ac-mode-map [(control return)] 'auto-complete) 
;(defun my-ac-config ()  
;  (setq ac-clang-flags  
;        (mapcar(lambda (item)(concat "-I" item))  
;               (split-string  
;                "
; /usr/include/c++/4.9
; /usr/include/c++/4.9/backward
; /usr/lib/gcc/x86_64-linux-gnu/4.8/include
; /usr/lib/gcc/x86_64-linux-gnu/4.9/include
; /usr/local/include
; /usr/include
; /home/john/cocos2dx
; /home/john/cocos2dx/cocos
; /home/john/cocos2dx/extensions
;"
;)))
;  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
;  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
;  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
;  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;  (add-hook 'css-mode-hook 'ac-css-mode-setup)
;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;  (global-auto-complete-mode t))
;(defun my-ac-cc-mode-setup ()  
;  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
;(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)  
;;; ac-source-gtags  
;(my-ac-config)  
;(ac-config-default)
;;; 结束
;
;;;
