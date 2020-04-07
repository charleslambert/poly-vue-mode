;;; poly-vue-mode.el --- A vue mode based on polymode -*- lexical-binding: t -*-

;; Author: Charles Lambert
;; Maintainer: Charles Lambert
;; Version: 0.1
;; Package-Requires: ((polymode "0.2.2"))

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
