;;; poly-vue.el --- A vue mode based on polymode -*- lexical-binding: t -*-

;; Author: Charles Lambert
;; Maintainer: Charles Lambert
;; Version: version
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords


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

(defcustom pm-host/vue-html
  (pm-host-chunkmode :name "vue"
                     :mode 'vue-html-mode)
  "Vue-html host chunkmode."
  :group 'poly-hostmodes
  :type 'object)

(defcustom  pm-inner/css-fenced-code
  (pm-inner-auto-chunkmode :name "css-fenced-code"
			   :head-mode 'host
                           :mode 'css-mode
			   :mode-matcher ""
                           :head-matcher "<style>"
                           :tail-matcher "</style>"
                           )
  "CSS fenced code block."
  :group 'poly-innermodes
  :type 'object)

(defcustom  pm-inner/js-fenced-code
  (pm-inner-auto-chunkmode :name "js-fenced-code"
			   :head-mode 'host
                           :mode 'javascript-mode
			   :mode-matcher ""
                           :head-matcher "<script>"
                           :tail-matcher "</script>"
                           )
  "Javascript fenced code block."
  :group 'poly-innermodes
  :type 'object)


(define-polymode poly-vue-mode
  :hostmode 'pm-host/vue-html
  :innermodes '(pm-inner/css-fenced-code pm-inner/js-fenced-code))


(provide 'poly-vue)

;;; poly-vue.el ends here
