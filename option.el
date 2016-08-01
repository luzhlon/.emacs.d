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

;; 禁用终端响铃
;;(setq visible-bell t)
;;----------------- 显示日期时间--------------------
;;;(setq display-time-day-and-date t)
;;;(setq display-time-24hr-format t)
;;;(setq display-time-day-and-date t)
;(setq display-time-use-mail-icon t)
;;;(setq display-time-interval 10)
;;;(display-time)
;Time-stamp 设定文档上次保存的信息-------------------------
;需在文档的前8行中加入关键字如: Time-stamp: <> 或 Time-stamp: ""，便会自动保存时间戳
;(setq time-stamp-active t) ;更新timestamps
;(setq time-stamp-warn-inactive t); warn if unable
;设置time-stamp的格式
;当前使用的系统用户名[%u] ;当前的操作系统名[%s]
;星期几[%:a] ;当前时刻%02H : %02M : %02S
;(setq time-stamp-format " File [%f] modified by Liangbo on %:a, %:y.%02m.%02d at %02H : %02M : %02S on %s ")
;(setq-default time-stamp-start "\\(\\([Ll]ast-?[Uu]pdate\\)\\|\\([Tt]ime-?[Ss]tamp\\)\\): [^A-Za-z0-9: -\"']?[<\"'][^<>A-Za-z0-9: -\"']?")
;(setq-default time-stamp-format " File [%f] modified by Liangbo on %:y.%02m.%02d ")
;(setq-default time-stamp-end "\\\\?[^<>A-Za-z0-9: -\"']?[>\"'][^A-Za-z0-9: -\"']?")
;(add-hook 'write-file-hooks 'time-stamp);;保存动作时更新时间戳
;;-------------------------------------------------------
;;; 不产生备份文件
(setq make-backup-files nil)
(setq-default make-backup-files nil) ;不产生临时文件
;; 无操作60后自动保存
(setq auto-save-timeout 60)

;; 防止页面滚动时跳动
(setq scroll-margin 3
     scroll-conservatively 10000)
;; 保存上次的操作记录到SESSION: http://emacs-session.sourceforge.net/
;; 打开图片显示功能
(auto-image-file-mode t)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;---------------- Personal Info. ----------------------
(setq user-full-name "luzhlon")
(setq user-mail-address "luzhlon@outlook.com")
(setq track-eol t) ; 当光标在行尾上下移动的时候，始终保持在行尾。
;(setq default-fill-column 60)
(setq resize-mini-windows nil)
;;递归minibuffers
(setq enable-recursive-minibuffers t)
;;默认工作目录
(setq default-directory "~/")
(setq tab-width 4 indent-tabs-mode nil)

(set-default-font "DejaVu Sans Mono-14") ; 字体
;; (global-hl-line-mode 1)  ; 高亮当前行
(scroll-bar-mode 0) ;隐藏滚动条
(tool-bar-mode 0) ;隐藏工具栏
(global-auto-revert-mode t);;在外部更新了文件后,自动更新
(global-font-lock-mode 1)
(transient-mark-mode 1)
;; 显示行号
(require 'linum)
(global-linum-mode t)

;; 设置让光标指到某个括号与它匹配的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
