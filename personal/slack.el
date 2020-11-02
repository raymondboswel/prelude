(prelude-require-packages '(slack))
(prelude-require-packages '(alert))
(prelude-require-packages '(emojify))

(add-hook 'after-init-hook #'global-emojify-mode)

(setq slack-completing-read-function
      #'ido-completing-read)
(setq slack-buffer-function #'switch-to-buffer)
(setq slack-prefer-current-team t)
(setq slack-display-team-name nil)

;;; Go to any channel with `C-x j'.
(define-key ctl-x-map "j" #'slack-select-rooms)
;;; Quick 'n dirty way of opening the most recent link
;;; in the current chat room.
;; (define-key slack-mode-map (kbd "M-o")
;;   (kbd "<backtab> RET M->"))
;;; I thumbs-up a lot. Don't judge me.
;; (define-key slack-mode-map (kbd "C-;") ":+1:")
;;; Bring up the mentions menu with `@', and insert a
;;; space afterwards.
;; (define-key slack-mode-map "@"
;;   (defun endless/slack-message-embed-mention ()
;;     (interactive)
;;     (call-interactively #'slack-message-embed-mention)
;;     (insert " ")))

;;; Pretty straightforward.
;; (define-key slack-mode-map (kbd "C-c C-d")
;;   #'slack-message-delete)
;; (define-key slack-mode-map (kbd "C-c C-e")
;;   #'slack-message-edit)
;; (define-key slack-mode-map (kbd "C-c C-k")
;;   #'slack-channel-leave)

(slack-register-team
 :name "Fastcomm"
 :default t
 :token (auth-source-pick-first-password
         :host "ttrumpet.slack.com"
         :user "raymond@fastcomm.com")
 :full-and-display-names t)

(slack-start)

(setq alert-default-style 'notifier)
