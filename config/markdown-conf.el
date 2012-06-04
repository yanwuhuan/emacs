;
;--*-- coding: utf-8 --*--
;

(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
       (append '(("\\.markdown$" . markdown-mode)
                 ("\\.md$" . markdown-mode)) auto-mode-alist))
