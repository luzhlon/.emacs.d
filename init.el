
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun loadconfs (v)
  (mapcar (lambda (e)
                 (load (concat (getenv "HOME") "/.emacs.d/config/" e ".el")))
          v))

(loadconfs ["option"
            "luzhlon"
            "elpa"
;;            "powerline"
;;            "yasnippet"
            "evil"
            "keymap"])

;; company自动完成
(global-company-mode 1)
;; ido插件
;; (ido-mode 1)
;; 自动匹配括号
(electric-pair-mode 1)
;; 加载配色主题
(load-theme 'molokai 1)
;; set alpha
(set-frame-parameter (selected-frame) 'alpha 90)

;; window-number
;; (require 'window-number)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" default)))
 '(ede-project-directories
   (quote
	("/home/tom/dbus" "/home/tom/edetest" "/tmp/project/include" "/tmp/project/src" "/tmp/project")))
 '(package-selected-packages
   (quote
	(yasnippet-bundle yasnippet switch-window smart-mode-line-powerline-theme powerline-evil o-blog molokai-theme markdown-mode+ company ace-jump-mode)))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
