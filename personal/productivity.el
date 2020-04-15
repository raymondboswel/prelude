;; Install pomodoro to org mode
(prelude-require-packages '(org-pomodoro))

;; Create shortcut to todo file
(set-register ?t (cons 'file "~/todo.org"))
