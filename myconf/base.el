;;///.emacs:

;;;;---------------------- UI -------------------------

;; 标题栏，显示"buffer的名字@Emacs"
(setq frame-title-format "%b@Emacs")

;; 禁用启动信息
(setq inhibit-startup-message t)

;; 显示光标位置：
(setq column-number-mode t)
(setq line-number-mode t)

;; 设置kill-ring-max为200
(setq kill-ring-max 200)

;; 设置tab为4个空格的宽度，而不是原来的2
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; 设置让光标指到某个括号与它匹配的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 禁用终端响铃
;;(setq visible-bell t)

;; 高亮显示选择区域
(setq transient-mark-mode t)

;;----------------- 显示日期时间--------------------
;;;(setq display-time-day-and-date t)
;;;(setq display-time-24hr-format t)
;;;(setq display-time-day-and-date t)
;(setq display-time-use-mail-icon t)
;;;(setq display-time-interval 10)
;;;(display-time)
;Time-stamp 设定文档上次保存的信息-------------------------
;需在文档的前8行中加入关键字如: Time-stamp: <> 或 Time-stamp: ""，便会自动保存时间戳
(setq time-stamp-active t) ;更新timestamps
(setq time-stamp-warn-inactive t); warn if unable
;设置time-stamp的格式
;当前使用的系统用户名[%u] ;当前的操作系统名[%s]
;星期几[%:a] ;当前时刻%02H : %02M : %02S
;(setq time-stamp-format " File [%f] modified by Liangbo on %:a, %:y.%02m.%02d at %02H : %02M : %02S on %s ")
(setq-default time-stamp-start "\\(\\([Ll]ast-?[Uu]pdate\\)\\|\\([Tt]ime-?[Ss]tamp\\)\\): [^A-Za-z0-9: -\"']?[<\"'][^<>A-Za-z0-9: -\"']?")
(setq-default time-stamp-format " File [%f] modified by Liangbo on %:y.%02m.%02d ")
(setq-default time-stamp-end "\\\\?[^<>A-Za-z0-9: -\"']?[>\"'][^A-Za-z0-9: -\"']?")
(add-hook 'write-file-hooks 'time-stamp);;保存动作时更新时间戳
;-------------------------------------------------------

;; 不产生备份文件
(setq make-backup-files nil)
(setq-default make-backup-files nil) ;不产生临时文件

;; 取消自动保存
(auto-save-mode 0)

;; 防止页面滚动时跳动
(setq scroll-margin 3
     scroll-conservatively 10000)

;; 保存上次的操作记录到SESSION: http://emacs-session.sourceforge.net/

;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)
;;(setq session-save-file "~/etc/emacs/session")

;; 给每行显示行号: http://stud4.tuwien.ac.at/~e0225855/linum/linum.html
;;(require 'linum)

(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist '(
                   (?` ?` _ "''")
                   (?\( _ ")")
                   (?\[ _ "]")
                   (?{ \n > _ \n ?} >)
                   (?\" _ "\"")))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;输入左边的括号，就会自动补全右边的部分.包括(), '', [] , {} ,""

;;;;自动补齐策略
(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
          (hippie-expand nil)
          (indent-for-tab-command))
)

;; 颜色主题: http://download.gna.org/color-theme/
(add-to-list 'load-path "~/.emacs.d/el-get/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-almost-monokai)

;; 'y' for 'yes', 'n' for 'no'
(fset 'yes-or-no-p 'y-or-n-p)

;; 打开图片显示功能
(auto-image-file-mode t)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;---------------- Personal Info. ----------------------
(setq user-full-name "john")
(setq user-mail-address "luzhlon@126.com")
(setq track-eol t) ; 当光标在行尾上下移动的时候，始终保持在行尾。

(setq default-fill-column 60)
(global-font-lock-mode 1)
(transient-mark-mode 1)

(setq resize-mini-windows nil)
;;递归minibuffers
(setq enable-recursive-minibuffers t)
;;默认工作目录
(setq default-directory "~/")

;;键绑定
(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info)
(global-set-key [f3] 'grep-find)
(global-set-key [M-f3] 'kill-this-buffer)

(scroll-bar-mode 0) ;隐藏滚动条
(tool-bar-mode 0) ;隐藏工具栏

(setq tab-width 4 indent-tabs-mode nil)
(global-hl-line-mode 1);;高亮当前行
(global-auto-revert-mode t);;在外部更新了文件后,自动更新

;; elisp 包管理
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; 开启 auto-complete
(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/ac-dict/")
(add-to-list 'ac-user-dictionary-files "~/.emacs.d/el-get/auto-complete/dict/guotf.dict")
(require 'auto-complete-config)
;; 结束

;; 开启 auto-complete-clang
(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete-clang/")
(require 'auto-complete-clang)  
;;(setq ac-clang-auto-save t)  
;; 设置不自动启动
(setq ac-auto-start nil)  
;; 设置响应时间 0.5
(setq ac-quick-help-delay 0.5)  
;;(ac-set-trigger-key "TAB")  
;; 提示快捷键为 ctrl-return
(define-key ac-mode-map [(control return)] 'auto-complete) 
(defun my-ac-config ()  
  (setq ac-clang-flags  
        (mapcar(lambda (item)(concat "-I" item))  
               (split-string  
                "
 /usr/include/c++/4.9
 /usr/include/c++/4.9/backward
 /usr/lib/gcc/x86_64-linux-gnu/4.8/include
 /usr/lib/gcc/x86_64-linux-gnu/4.9/include
 /usr/local/include
 /usr/include
 /home/john/cocos2dx
 /home/john/cocos2dx/cocos
 /home/john/cocos2dx/extensions
"
)))
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()  
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)  
;; ac-source-gtags  
(my-ac-config)  
(ac-config-default)
;; 结束

;;yasnippet
(add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/el-get/yasnippet")
;(yas-global-mode 1)

;; evil
(add-to-list 'load-path "~/.emacs.d/el-get/evil")
(require 'evil)
(evil-mode 1)
