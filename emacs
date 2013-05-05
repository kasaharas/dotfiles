(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(set-face-foreground 'font-lock-comment-face "blue")
(set-face-foreground 'font-lock-comment-delimiter-face "blue")

;; load path
(setq load-path (cons "~/.emacs.d/include" load-path))

;; line & col numbers
(line-number-mode 1)
(column-number-mode 1)

;; coloring in shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; turn off menubar & toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; lua stuff
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)

;; loads ruby mode when a .rb file is opened.
(setq auto-mode-alist (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rhtml$" . html-mode) auto-mode-alist))
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)

;; haml
(add-to-list 'load-path "/path/to/haml-mode.el")
(require 'haml-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;; yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; css
(autoload 'css-mode "css-mode")
(setq auto-mode-alist (cons '("\\.css\\'" . css-mode) auto-mode-alist))

;; show highlighting                            
(setq transient-mark-mode t)
(set-face-background 'region "gray22") ; Set region background color

;; # of spaces per tab
(setq default-tab-width 3)
  
;; soft tabs
(setq default-indent-tabs-mode nil)

