(require 'lsp-mode)
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'typescript-mode-hook
          (lambda ()
            (format-all-mode)))
