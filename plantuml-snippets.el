;;; plantuml-snippets.el --- snippets for plantuml

;; Author: hejack0207 <hejack0207@sina.com>
;; Maintainer: hejack0207
;; Version: 0.0.1
;; Package-Requires: ((s "1.4.0") (dash "1.2.0"))
;; Homepage: https://github.com/hejack0207/plantuml-snippets.el
;; Keywords: plantuml snippets


;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:

(require 'yasnippet)
(require 'dash)
(require 's)

(setq plantuml-snippets-root (file-name-directory (or load-file-name
                                                     (buffer-file-name))))

;;;###autoload
(defun plantuml-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" plantuml-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load "yasnippet"
  '(plantuml-snippets-initialize))

(provide 'plantuml-snippets)

;;; plantuml-snippets.el ends here
