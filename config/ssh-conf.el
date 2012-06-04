;;
;; Usage
;; same as find-file, file path is:
;;  /user@host:/path_in_host/to/file

;;; ssh
(setq tramp-default-method "plink")
(setq tramp-auto-save-directory "~/.emacs.d/auto-save-list")
(setq tramp-chunksize 328)
(setq tramp-default-user "tanis")
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))
(setq tramp-backup-directory-alist backup-directory-alist)

(require 'tramp)
