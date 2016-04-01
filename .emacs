(package-initialize)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;;;;;Multiple Cursors;;;;;
(global-set-key(kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-g") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-c C-n") 'mc/unmark-next-like-this)

;;iy-go-to-char config
(require 'iy-go-to-char)
(global-set-key (kbd "M-m") 'iy-go-to-char)
(global-set-key (kbd "M-,") 'iy-go-to-char-backward)
(global-set-key (kbd "M-n") 'iy-go-to-or-up-to-continue)
(global-set-key (kbd "M-b") 'iy-go-to-or-up-to-continue-backward)
(global-set-key (kbd "M-l") 'downcase-word)
(global-set-key (kbd "M-t") 'transpose-words)

;;Expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-*") 'pending-delete-mode)
(global-set-key (kbd "C-?") 'er/contract-region)

;;Malabar mode
;(require 'cedet)
;(semantic-load-enable-minimum-features) ;; or enable more if you wish
;(require 'malabar-mode)
;(setq malabar-groovy-lib-dir "~/.emacs.d/elpa/malabar-mode-20140303.946")
;(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))

;;Auto-complete Mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.5.1/dict")
(ac-config-default)
(ac-linum-workaround)
;; customizing ac
(set-face-background 'ac-candidate-face "grey7")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "dark slate gray")
(global-set-key (kbd "C-c a") 'auto-complete-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-dictionary-directories (quote ("/home/abel/.emacs.d/elpa/auto-complete-1.5.1/dict")))
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(cursor-type (quote box) t)
 '(custom-enabled-themes (quote (seti)))
 '(custom-safe-themes (quote ("a037894962137f98b0af7e66b9016414b43ca4c019eace48b3d27bd187db63e4" "135bbd2e531f067ed6a25287a47e490ea5ae40b7008211c70385022dbab3ab2a" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "acf633e5c121a8dc25cb1e5b5be2c818b0b62aff3fdb479a3c96e9a992da015b" "0d7ee39db806d2bae447fcc5a868f9b47eafae0a3464e2084a4a45462f2f4c2d" "937e1382f73751d40e63547bdf0c7498bdbbc1e0c04cbedc2500300dc02315d9" "72ac74b21322d3b51235f3b709c43c0721012e493ea844a358c7cd4d57857f1f" default)))
 '(exec-path (quote ("/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/usr/games" "/usr/local/games" "/usr/lib/emacs/24.3/x86_64-linux-gnu" "~/apache-maven-3.3.9/bin")))
 '(global-auto-complete-mode nil)
 '(global-hl-line-mode t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode t)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa-stable" . "https://stable.melpa.org/packages/"))))
 '(server-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :foreground "#e1e1e0" :background "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(ac-candidate-face ((t (:inherit popup-face :background "grey7" :foreground "gray" :underline "darkgray"))))
 '(cursor ((t (:background "IndianRed4" :foreground "#151718"))))
 '(ido-first-match ((t (:box (:line-width 2 :color "dark slate gray" :style released-button) :weight extra-bold)))))
(put 'downcase-region 'disabled nil)

(setq column-number-mode t)
;(global-linum-mode t)

;;smart mode line
(sml/setup)
;(setq sml/no-confirm-load-theme t)


