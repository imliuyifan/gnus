;; (setq gnus-select-method
;;       '(nnimap "gmail"
;; 	       (nnimap-address "imap.gmail.com")  ; it could also be imap.googlemail.com if that's your server.
;; 	       (nnimap-server-port "imaps")
;; 	       (nnimap-stream ssl)))

;; (setq smtpmail-smtp-service 587
;;       gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

(setq gnus-select-method '(nnnil))
(setq gnus-secondary-select-methods '((nntp "news.gwene.org")))
(gnus-add-configuration
 '(article
   (horizontal 1.0
               (vertical 1.0
                         (summary 0.1 point)
                         (article 1.0)))))

 ;; Use monospaced font faces in current buffer
 (defun my-buffer-face-mode-fixed ()
   "Sets a fixed width (monospace) font in current buffer"
   (interactive)
   (setq buffer-face-mode-face '(:family "Garamond" :height 250))
   (buffer-face-mode)
   (linum-mode 0)
   (setq mm-text-html-renderer 'w3m)
   )

(add-hook 'gnus-article-mode-hook 'my-buffer-face-mode-fixed)
(autoload 'gnus-group-make-shimbun-group "nnshimbun" nil t)
;; (require 'nnshimbun)
;; (setq gnus-fetch-old-headers 't)
;; (setq gnus-asynchronous t)
;; (setq gnus-use-article-prefetch 10)
;; ;; (setq gnus-agent-max-fetch-size 100)
;; (setq gnus-parameter-large-newsgroup-initial 50)
;; (setq gnus-secondary-select-methods '((nntp "news.gmane.org")))
