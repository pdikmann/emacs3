
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-language-environment "UTF-8")

;; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; misc
(add-hook 'prog-mode-hook 'show-paren-mode)
;;(add-hook 'prog-mode-hook 'paredit-mode)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'geiser-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'cider-mode)
;;(add-hook 'clojure-mode-hook 'clj-refactor-mode)
(global-set-key (kbd "C-z") 'yank)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "<C-tab>") 'hippie-expand)

(defalias 'yes-or-no-p 'y-or-n-p)
;; ace-jump-mode
(add-to-list 'load-path "c:/Users/diki/AppData/Roaming/.emacs.d/user")
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(global-set-key (kbd "M-o") 'ace-jump-mode)

(global-set-key (kbd "<f12>") 'set-selective-display-dlw)

(defun set-selective-display-dlw (&optional level)
  "Fold text indented same of more than the cursor.
If level is set, set the indent level to LEVEL.
If 'selective-display' is already set to LEVEL, clicking
F5 again will unset 'selective-display' by setting it to 0."
  (interactive "P")
  (if (eq selective-display (1+ (current-indentation)))
      (set-selective-display 0)
    (set-selective-display (or level (1+ (current-indentation))))))

;;(set-frame-font "DejaVu Sans Mono 10" nil t)
;;(set-frame-font "Fixedsys Excelsior 3.01 12" nil t)
(set-frame-font "Liberation Mono 10" nil t)
(setq-default line-spacing 1)
(setq auto-save-default nil)

;;(load-theme 'zenburn t)
(load-theme 'earthsong t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(css-indent-offset 2)
 '(custom-safe-themes
   (quote
    ("78e9a3e1c519656654044aeb25acb8bec02579508c145b6db158d2cfad87c44e" default)))
 '(desktop-save-mode t)
 '(exec-path
   (quote
    ("f:/Python37-32/Scripts/" "F:/Python37-32/" "C:/Program Files (x86)/NVIDIA Corporation/PhysX/Common" "C:/ProgramData/Oracle/Java/javapath" "C:/WINDOWS/system32" "C:/WINDOWS" "C:/WINDOWS/System32/Wbem" "C:/WINDOWS/System32/WindowsPowerShell/v1.0/" "C:/Program Files (x86)/ATI Technologies/ATI.ACE/Core-Static" "C:/Program Files (x86)/AMD/ATI.ACE/Core-Static" "C:/Program Files (x86)/Toshiba/Bluetooth Toshiba Stack/sys/" "C:/Program Files (x86)/Toshiba/Bluetooth Toshiba Stack/sys/x64/" "F:/SBCL/" "F:/HaxeToolkit/haxe/" "F:/HaxeToolkit/neko" "F:/ffmpeg-4.2-win64-static/bin" "F:/lame" "F:/youtube-dl" "C:/WINDOWS/System32/OpenSSH/" "F:/Program Files/Git/cmd" "F:/Microsoft VS Code/bin" "C:/Users/diki/AppData/Local/Microsoft/WindowsApps" "C:/Users/diki/AppData/Local/atom/bin" "f:/emacs-26.2-x86_64/libexec/emacs/26.2/x86_64-w64-mingw32" "C:/Users/diki/bin")))
 '(geiser-active-implementations (quote (chez)))
 '(geiser-chez-binary
   "C:\\Program Files\\Chez Scheme 9.5.4\\bin\\ta6nt\\scheme.exe")
 '(geiser-chicken-binary (quote ("F:\\chicken-5.2.0\\csi.exe" "-:c")))
 '(hippie-expand-try-functions-list
   (quote
    (try-expand-dabbrev try-expand-dabbrev-from-kill try-expand-dabbrev-all-buffers try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("melpa-stable" . "https://stable.melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (clj-refactor markdown-mode zenburn-theme cider multiple-cursors geiser paredit)))
 '(standard-indent 2)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
