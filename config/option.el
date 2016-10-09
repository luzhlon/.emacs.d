;; 关闭工具栏、菜单栏、滚动条
(tool-bar-mode 0)
(scroll-bar-mode 0)
;;(menu-bar-mode 0)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)
;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)


;;关闭烦人的出错时的提示声
(setq visible-bell nil)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;; author: chinazhangjie
;; e-mail: chinajiezhang@gmail.com

;; 指针颜色设置为白色
;;(set-cursor-color "white")
;; 鼠标颜色设置为白色
;;(set-mouse-color "white")


;; 一打开就起用 text 模式。  
;;(setq default-major-mode 'text-mode)

;; 语法高亮
;;(global-font-lock-mode t)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
;;(display-time-mode 1)  
;;(setq display-time-24hr-format t)  
;;(setq display-time-day-and-date t)  

(transient-mark-mode t) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "luzhlon@%b")

;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font "Fantasque Sans Mono 14")

;; 显示列号
(global-linum-mode 1)

;; 设置缩进
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())


;; 回车缩进
;;(global-set-key "\C-m" 'newline-and-indent)
;;(global-set-key (kbd "C-<return>") 'newline)

;; 实现全屏效果，快捷键为f6
(global-set-key [f6] 'my-fullscreen) 
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
    nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
