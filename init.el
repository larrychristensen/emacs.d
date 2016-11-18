;;; Package Management
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


;; Execution Path
(add-to-list 'exec-path "~/bin")


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

(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)

;; Rainbow Delimiters
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; Global Hooks
(unless (package-installed-p 'company)
  (package-install 'company))

(add-hook 'after-init-hook 'global-company-mode)

;; Expand Region
(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Which Key
(unless (package-installed-p 'which-key)
  (package-install 'which-key))




