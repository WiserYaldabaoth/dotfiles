;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))
(package-initialize)

(defun require-package (package)
  (setq-default highlight-tabs t)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))


; Add undo-tree
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)


; EMBRACE THE POWER OF BEELZEVIM
; AHAHAHAHAHAHaHAHAHAHJAHAHAHAH
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

