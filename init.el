;;; Package Management
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


;; Full Screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (rainbow-delimiters which-key solarized-theme paredit magit expand-region company cider))))

;; Execution Path
(add-to-list 'exec-path "~/bin")

(setq default-directory "/Users/larry/Documents/code/")


;;; Plugin-Specific Configurations
;; Cider
(unless (package-installed-p 'cider)
  (package-install 'cider))

;; Configure Magit
(unless (package-installed-p 'magit)
  (package-install 'magit))

(global-set-key (kbd "C-x g") 'magit-status)

;; Paredit
(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode) 

;; Rainbow Delimiters
(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; Expand Region
(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Which Key
(unless (package-installed-p 'which-key)
  (package-install 'which-key))
(require 'which-key)
(which-key-mode)

;; Company Mode
(unless (package-installed-p 'company)
  (package-install 'company))

(add-hook 'after-init-hook 'global-company-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
