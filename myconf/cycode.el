;;gdb-ui配置
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")

;;;;----------------- Programming ------------------------
;;cedet插件设置
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/speedbar")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/eieio")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/semantic")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/common")
(require 'cedet)

;;;(global-ede-mode 1)
(semantic-load-enable-minimum-features)
;;;   这个函数开启了三个基本特性
;;;   semantic-idle-scheduler-mode
;;;   semanticdb-minor-mode
;;;   semanticdb-load-ebrowse-caches
(semantic-load-enable-code-helpers)
;;;   特性：
;;;   semantic-load-enable-minimum-features
;;;   imenu
;(semantic-idle-summary-mode)
;;;   光标停留在一个类/函数等tag上时，会在minibuffer显示原型
;(senator-minor-mode)
;;;   会添加一个senator菜单
;(semantic-idle-completions-mode)
;;;   光标停留一段时间后，会自动提示可以补全的内容
(semantic-load-enable-excessive-code-helpers)
;;;   
(semantic-load-enable-semantic-debugging-helpers)
;;;


;;; gcc setup
(require 'semantic-gcc)

;;; smart complitions setup
(require 'semantic-ia)

;;; Speed bar
(add-hook 'speedbar-load-hook (lambda () (require 'semantic-sb)))

;;; 快捷键
(defun my-cedet-hook()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)

  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key (kbd "M-n") 'semantic-ia-complete-symbol-menu);;;智能补全

  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key (kbd "M-/") 'semantic-complete-analyze-inline)

  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  (local-set-key "\f12" 'semantic-ia-fast-jump) ;;代码跳转
  (local-set-key "\C-cr" 'semantic-symref-symbol)
  (local-set-key "\C-cR" 'semantic-symref)

  ;;; c/c++ setting
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'c++-mode-common-hook 'my-cedet-hook)

(require 'semantic-c nil 'noerror)
(semantic-add-system-include "~/cocos2dx" 'c++-mode)
(semantic-add-system-include "~/cocos2dx/cocos" 'c++-mode)

;;;EDE 配置
(global-ede-mode t)
;;;   会添加一个Project 菜单

;;ecb配置
;开启ecb用M-x:ecb-activate
(add-to-list 'load-path "~/.emacs.d/plugins/ecb-snap")
(require 'ecb-autoloads)
(require 'ecb)
;(setq ecb-tip-of-the-day nil)
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;隐藏和显示ecb窗口
(global-set-key [f11] 'ecb-hide-ecb-windows)
(global-set-key [S-f11] 'ecb-show-ecb-windows)
;;
(global-set-key (kbd "M-4") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-0") 'other-window)
(global-set-key (kbd "M-5") 'display-buffer-name)

;;auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(add-to-list 'load-path "~/.emacs.d/plugins/popup-el")
(add-to-list 'load-path "~/.emacs.d/plugins/fuzzy-el")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
(setq ac-use-quick-help t)
(setq ac-auto-start 4) ;; 输入4个字符才开始补全
;(global-set-key "\M-/" 'auto-complete)  ;; 补全的快捷键，用于需要提前补全
;; Show menu 0.8 second later
(setq ac-auto-show-menu 0.8)
;; 选择菜单项的快捷键
(setq ac-use-menu-map t)
;(define-key ac-menu-map "\C-n" 'ac-next)
;(define-key ac-menu-map "\C-p" 'ac-previous)
;; menu设置为12 lines
(setq ac-menu-height 12)
(ac-set-trigger-key "<C-return>")

;;yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet")
;(yas-global-mode 1)


