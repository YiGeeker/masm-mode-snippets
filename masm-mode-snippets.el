;;; masm-mode-snippets.el --- Yasnippets for masm mode -*- lexical-binding: t; -*-

;; Author: YiGeeker <zychinese@yeah.net>
;; Version: 1.0.0
;; Package-Requires: ((yasnippet "0.8.0"))
;; Keywords: masm, snippets
;; URL: https://github.com/YiGeeker/masm-mode-snippets
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by the
;; Free Software Foundation, either version 3 of the License, or (at your
;; option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;; Public License for more details.
;;
;; You should have received a copy of the GNU General Public License along
;; with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This is a collection of Yasnippets for masm mode.
;; licenses: GNU GPL and MIT License.

;;; Code:

(require 'yasnippet)

(defvar masm-mode-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name)))
  "Root directory of masm mode snippets.")

;;;###autoload
(defun masm-mode-snippets-initialize ()
  "Initialize masm mode snippets, so Yasnippet can see them."
  (let ((dir (expand-file-name "snippets" masm-mode-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs dir t))
    (yas-load-directory dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(masm-mode-snippets-initialize))

(provide 'masm-mode-snippets)

;;; masm-mode-snippets.el ends here
