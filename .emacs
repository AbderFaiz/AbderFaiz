(package-initialize)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(require 'auto-dark)
(auto-dark-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dark-themes '((leuven-dark) (leuven)))
 '(blink-cursor-mode nil)
 '(menu-bar-mode nil)
 '(nyan-animate-nyancat t)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(auto-dark grep-a-lot org nyan-mode))
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
