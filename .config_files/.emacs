(package-initialize)
(setq-default ispell-program-name "aspell")
(require 'org)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
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
      '((sequence "REPEAT(r)" "NEXT(n@/!)" "TODO(t@/!)" "WAITING(w@/!)" "SOMEDAY(s@/!)" "PROJ(p)" "|" "DONE(d@)" "CANCELLED(c@)")
	(sequence "GOAL(g)" "|" "ACHIEVED(a@)" "MISSED(m@)")
	))
(setq org-tag-alist '(("HaveToDo" . ?h) ("ShouldDo" . ?s) ("WantToDo" . ?w)))
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
(require 'wc-mode)

;;;; Code Completion
(use-package corfu
  :ensure t
  :init
  (global-corfu-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(diary-list-entries-hook '(diary-include-other-diary-files diary-sort-entries))
 '(electric-pair-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(nyan-animate-nyancat t)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(org-agenda-files '("~/org/capture.org" "~/org/life.org"))
 '(org-agenda-include-diary t)
 '(org-babel-load-languages '((emacs-lisp . t) (shell . t)))
 '(org-capture-templates
   '(("G" "Define a goal" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_goal.txt")
      :empty-lines-after 2)
     ("N" "NEXT entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_next.txt")
      :empty-lines-before 1)
     ("T" "TODO entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_todo.txt")
      :empty-lines-before 1)
     ("W" "WAITING entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_waiting.txt")
      :empty-lines-before 1)
     ("S" "SOMEDAY entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_someday.txt")
      :empty-lines-before 1)
     ("P" "PROJ entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/tpl/tpl_proj.txt")
      :empty-lines-before 1)
     ("B" "Book on the to-read-list" entry
      (file+headline "~/org/life.org" "Books to read")
      (file "~/org/tpl/tpl_book.txt")
      :empty-lines-after 2)
     ("D" "Add a daily plan checklist" entry
      (file+olp+datetree "~/org/daily_plan.org")
      (file "~/org/tpl/tpl_daily_plan.txt"))
     ("J" "Add a journal entry" entry
      (file+olp+datetree "~/org/journal.org")
      "* %<%H:%M> - %^{Activity}\12%?")
     ("w" "Add 10 I wants" entry
      (file+olp+datetree "~/org/wants.org")
      "* %<%H:%M>\0121. %?")
     ("b" "Add an item to buy" entry
      (file+headline "~/org/life.org" "Wish List")
      (file "~/org/tpl/tpl_wishlist.txt")
      :empty-lines-before 1)))
 '(org-clock-into-drawer "CLOCKING")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-hide-leading-stars t)
 '(org-log-into-drawer t)
 '(org-log-repeat nil)
 '(org-log-reschedule 'note)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(org-refile-allow-creating-parent-nodes 'confirm)
 '(org-refile-targets '((org-agenda-files :maxlevel . 2)))
 '(org-refile-use-outline-path 'file)
 '(org-startup-folded 'content)
 '(org-startup-indented t)
 '(org-track-ordered-property-with-tag t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(corfu wc-mode emmet-mode prettier js2-mode markdown-mode web-mode helpful ocaml-eglot tuareg grep-a-lot nyan-mode))
 '(read-quoted-char-radix 16)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 136 :width normal :foundry "JetBrains  " :family "JetBrains Mono")))))

(defun my/copy-idlink-to-clipboard() "Copy an ID link with the
headline to killring, if no ID is there then create a new unique
ID.  This function works only in org-mode or org-agenda buffers. 

The purpose of this function is to easily construct id:-links to 
org-mode items. If its assigned to a key it saves you marking the
text and copying to the killring."
       (interactive)
       (when (eq major-mode 'org-agenda-mode) ;if we are in agenda mode we switch to orgmode
	 (org-agenda-show)
	 (org-agenda-goto))       
       (when (eq major-mode 'org-mode) ; do this only in org-mode buffers
	 (setq mytmphead (nth 4 (org-heading-components)))
         (setq mytmpid (funcall 'org-id-get-create))
	 (setq mytmplink (format "[[id:%s][%s]]" mytmpid mytmphead))
	 (kill-new mytmplink)
	 (message "Copied %s to killring (clipboard)" mytmplink)
	 ))

(global-set-key (kbd "<f5>") 'my/copy-idlink-to-clipboard)

(defun org-reset-checkbox-state-maybe ()
  "Reset all checkboxes in an entry if the `RESET_CHECK_BOXES' property is set"
  (interactive "*")
  (if (org-entry-get (point) "RESET_CHECK_BOXES")
      (org-reset-checkbox-state-subtree)))

(defun org-checklist ()
  (when (member org-state org-done-keywords) ;; org-state dynamically bound in org.el/org-todo
    (org-reset-checkbox-state-maybe)))

(add-hook 'org-after-todo-state-change-hook 'org-checklist)

(defun my/set-theme-based-on-time ()
  (let ((hour (string-to-number (format-time-string "%H"))))
    (if (or (< hour 7) (> hour 19))
        (load-theme 'leuven-dark t)
      (load-theme 'leuven t))))
(my/set-theme-based-on-time)
(run-at-time "1 min" 3600 'my/set-theme-based-on-time)

