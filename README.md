# padded-modeline 

It's a *very* simple minor mode that just adds padding to your modeline, it
default to `4` pixels but you can change it via `padded-modeline-padding`.

## Usage

``` elisp
(use-package padded-modeline
  :straight (padded-modeline :type git
                             :host github
                             :repo "mpenet/padded-modeline"
                             :branch "main")
  :config
  (padded-modeline-mode t))
```

## license 

Copyright © 2023 - Max Penet - GNU General Public License, version 2 

