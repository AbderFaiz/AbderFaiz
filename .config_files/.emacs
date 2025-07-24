(package-initialize)
(setq-default ispell-program-name "aspell")
(require 'org)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(require 'auto-dark)
(use-package org-tempo)
(use-package tuareg
  :ensure 
  :mode (("\\.ocamlinit\\'" . tuareg-mode)))
(use-package ocaml-eglot
  :ensure t
  :after tuareg
  :hook
  (tuareg-mode . ocaml-eglot)
  (ocaml-eglot . eglot-ensure))
(transient-mark-mode 1)
(setq org-todo-keywords
      '((sequence "REPEAT(r)" "NEXT(n@/!)" "TODO(t@/!)" "WAITING(w@/!)" "SOMEDAY(s@/!)" "PROJ(p)" "|" "DONE(d@)" "CANCELLED(c@)")))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "<f6>") 'org-capture)
(require 'emmet-mode)
(use-package web-mode
  :ensure t
  :mode "\\.html?\\'" 
  :mode "\\.css\\'"
  :mode "\\.phtml\\'"
  :mode "\\.tpl\\.php\\'"
  :mode "\\.[agj]sp\\'"
  :mode "\\.as[cp]x\\'"
  :mode "\\.erb\\'"
  :mode "\\.mustache\\'"
  :mode "\\.djhtml\\'"
  :config
  (setq web-mode-markup-indent-offser 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2))
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(require 'wc-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dark-mode t)
 '(auto-dark-themes '((leuven-dark) (leuven)))
 '(blink-cursor-mode nil)
 '(electric-pair-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(nyan-animate-nyancat t)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(org-agenda-files '("/home/faiz/org/mycalendar.org"))
 '(org-capture-templates
   '(("j" "Add journal entry" entry
      (file+olp+datetree "~/org/journal.org")
      "* %<%H:%M> - %^{Activity}")
     ("b" "Add book" entry
      (file+headline "~/org/mycalendar.org" "Books To Read")
      (file "~/org/book_tpl.txt"))))
 '(org-hide-leading-stars t)
 '(org-log-into-drawer t)
 '(org-log-repeat nil)
 '(org-log-reschedule 'note)
 '(org-startup-folded 'content)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(wc-mode emmet-mode prettier js2-mode markdown-mode web-mode helpful ocaml-eglot tuareg auto-dark grep-a-lot nyan-mode))
 '(read-quoted-char-radix 16)
 '(scroll-bar-mode nil)
 '(server-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 136 :width normal :foundry "JetBrains  " :family "JetBrains Mono")))))
