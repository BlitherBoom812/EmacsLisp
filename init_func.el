;;; init_func.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; this file defines a set of functions useful in config files.


;;; Code:
(defun file-name-only ()
  "Get the current buffer file name without directory."
  (file-name-nondirectory (buffer-name)))

(defun file-name-only-noext ()
  "Get the currennt buffer file name without directory and extension."
  (file-name-sans-extension (file-name-only)))
;; (defun my-send-to-shell (command)
;;   "Open shell and insert a COMMAND."
;;   ;; (interactive)
;;   (shell "runner")
;;   (insert command)
;;   )

;; (defun prog-key-bindings()
;;   (local-set-key (kbd "C-c C-r") '(my-send-to-shell (eval compile-command))))
;; (add-hook 'prog-mode-hook 'prog-key-bindings)

(defun my-reload-config()
  "Reload init config."
  (interactive)
  (load-file "~/.emacs.d/init.el")
)
(global-set-key (kbd "C-c M-r") 'my-reload-config)


(defun my-send-to-shell (command)
  "Open shell and insert a COMMAND."
  ;; (interactive)
  (shell "run")
  (insert command)
)

(defun my-compile-run()
  "Run compile command in a shell."
  (interactive)
  (message (eval compile-command))
  (my-send-to-shell (eval compile-command))
)

(defun prog-key-bindings()
  "Bind key in 'prog-mode."
  (local-set-key (kbd "C-c C-r") 'my-compile-run)
)

(add-hook 'prog-mode-hook 'prog-key-bindings)

;;; init_func.el ends here
