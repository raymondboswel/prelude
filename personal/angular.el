(setq lsp-clients-angular-language-server-command
 '("node"
   "/home/raymond/.nvm/versions/node/v12.14.1/lib/node_modules/@angular/language-server"
   "--ngProbeLocations"
   "/home/raymond/.nvm/versions/node/v12.14.1/lib/node_modules/@angular/language-server"
   "--tsProbeLocations"
   "/home/raymond/.nvm/versions/node/v12.14.1/lib/node_modules/@angular/language-server"
   "--stdio"))

(require 'lsp-mode)
(add-hook 'mhtml-mode-hook #'lsp)

;; (add-hook 'mhtml-mode-hook
;;           (lambda ()
;;             (prettier-js-mode)))

;; (add-to-list 'projectile-other-file-alist '("component.html" "component.ts" "component.scss")) ;; switch from html -> ts -> scss
;; (add-to-list 'projectile-other-file-alist '("html" "ts" "scss")) ;; switch from html -> ts -> scss
;; (add-to-list 'projectile-other-file-alist '("ts" "html" )) ;; switch from html -> ts -> scss
;; (add-to-list 'projectile-other-file-alist '("scss" "html" )) ;; switch from html -> ts -> scss

(add-to-list 'projectile-other-file-alist '("component.html" "component.ts" "component.scss")) ;; switch from html -> ts -> scss
(add-to-list 'projectile-other-file-alist '("component.ts" "component.html" "component.scss")) ;; switch from html -> ts -> scss
(add-to-list 'projectile-other-file-alist '("component.scss" "component.html" "component.ts")) ;; switch from html -> ts -> scss

(add-to-list 'projectile-globally-ignored-directories "dist")
(add-to-list 'projectile-globally-ignored-directories "node_modules")

(require 'flycheck)
;; (flycheck-add-next-checker 'lsp 'typescript-tslint)
