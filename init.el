;;; Package Management
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


;;; Install Packages
(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'magit)
  (package-install 'magit))

(unless (package-installed-p 'solarized-theme)
  (package-install 'solarized-theme))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(unless (package-installed-p 'company)
  (package-install 'company))

(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(unless (package-installed-p 'which-key)
  (package-install 'which-key))


;;; Global Hooks
(add-hook 'after-init-hook 'global-company-mode)


;;; Clojure Hooks


;; Plugin-Specific Configurations
;; Execution Path
(add-to-list 'exec-path "~/bin")

;; Load Solarized Theme
(load-theme 'solarized-dark t)

;; Configure Magit
(global-set-key (kbd "C-x g") 'magit-status)


