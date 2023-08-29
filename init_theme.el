;;; init_theme.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:
;; (load-theme 'dracula t)
(require 'unicode-fonts)
(unicode-fonts-setup)
(set-frame-font "Monospace 20")
(use-package all-the-icons
  :if (display-graphic-p))
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-monokai-octagon t)
  (doom-themes-treemacs-config))
(use-package smart-mode-line
  :ensure t
  :init
  ; (setq sml/no-confirm-load-theme t)  ; avoid asking when startup
  (sml/setup)
  :config
  (setq rm-blacklist
    (format "^ \\(%s\\)$"
      (mapconcat #'identity
        '("Projectile.*" "company.*" "Google"
	  "Undo-Tree" "counsel" "ivy" "yas" "WK")
        "\\|"))))

;;; init_theme.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(package-selected-packages
   '(treemacs-magit ewal-doom-themes smart-mode-line mwim amx cmake-mode use-package undo-tree counsel ace-window))
 '(safe-local-variable-values
   '((compile-command concat "cd "
		      (file-name-directory
		       (buffer-file-name))
		      " && cmake . " "&& make -j && ./"
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      "&& gtkwave " "wave.vcd")
     (compile-command concat "cd /" " && cmake . " "&& make -j && ./"
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      "&& gtkwave " "wave.vcd")
     (compile-command concat "cd "
		      (shell-quote-argument current-dir)
		      " && cmake . && make -j && ./"
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      " && gtkwave " "wave.vcd")
     (compile-command concat "cmake . " "&& make -j && ./"
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      "&& gtkwave " "wave.vcd")
     (compile-command concat "cmake . " "&& make && ./"
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      "&& gtkwave " "wave.vcd")
     (compile-command concat "cmake . " "&& make && "
		      (file-name-nondirectory
		       (directory-file-name
			(file-name-directory
			 (buffer-file-name))))
		      "&& gtkwave " "wave.vcd")
     (compile-command concat "cmake . " "&& make" "&& gtkwave.exe " "wave.vcd")
     (compile-command concat "cmake . " "&& make" "&& gtkwave " "wave.vcd")
     (compile-command concat "clang++ -g "
		      (file-name-only)
		      " -o "
		      (file-name-only-noext)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
