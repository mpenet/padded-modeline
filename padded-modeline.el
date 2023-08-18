;;; padded-modeline.el --- Simple modeline

;; Author: Max Penet <mpenet@s-exp.com>
;; Version: 0.1.0
;; This file is NOT part of GNU Emacs.

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

(defcustom padded-modeline-padding 4
  :type 'integer)

(defun padded-modeline-auto-set-modeline (padding)
    (set-face-attribute 'mode-line nil :box `(:line-width ,padding :color ,(face-attribute 'mode-line :background)))
    (set-face-attribute 'mode-line-inactive nil :box `(:line-width ,padding :color ,(face-attribute 'mode-line-active :background nil 'mode-line-inactive) bg))
    (set-face-attribute 'mode-line-active nil :box `(:line-width ,padding :color ,(face-attribute 'mode-line-active :background nil 'mode-line))))

(define-minor-mode padded-modeline-mode
  "Toggle `padded-modeline' on or off."
  :group 'padded-modeline
  :global t
  (padded-modeline-auto-set-modeline padded-modeline-padding))

(provide 'padded-modeline)

;;; padded-modeline.el ends here
