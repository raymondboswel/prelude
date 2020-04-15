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

(add-hook 'mhtml-mode-hook
          (lambda ()
            (format-all-mode)))
