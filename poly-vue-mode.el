;;; poly-vue-mode.el --- A vue mode based on polymode -*- lexical-binding: t -*-

;; Author: Charles Lambert
;; Maintainer: Charles Lambert
;; Version: 0.1
;; Package-Requires: ((polymode "0.2.2"))


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

(require 'polymode)

(define-hostmode poly-vue-html-hostmode
  :mode 'vue-html-mode)

(define-innermode poly-css-fenced-code-innermode
  :head-mode 'host
  :tail-mode 'host
  :mode 'css-mode
  :head-matcher "<style>"
  :tail-matcher "</style>")

(define-innermode  poly-js-fenced-code-innermode
  :head-mode 'host
  :tail-mode 'host
  :mode 'javascript-mode
  :head-matcher "<script>"
  :tail-matcher "</script>")

(define-innermode poly-ts-fenced-code-innermode
  :head-mode 'host
  :tail-mode 'host
  :mode 'typescript-mode
  :head-matcher "<script lang=\"ts\">"
  :tail-matcher "</script>")


(define-polymode poly-vue-mode
  :hostmode 'poly-vue-html-hostmode
  :innermodes '(poly-css-fenced-code-innermode poly-ts-fenced-code-innermode poly-js-fenced-code-innermode))


(provide 'poly-vue-mode)

;;; poly-vue-mode.el ends here
