# padded-modeline 

It's a **very simple** minor mode that just adds padding to your modeline, it
default to `4` pixels but you can change it via `padded-modeline-padding`.

Example when enabled on the default modeline : 

<img width="849" alt="Screenshot 2023-08-18 at 10 00 33" src="https://github.com/mpenet/padded-modeline/assets/106390/ab47ba84-d12a-49ff-9189-5bc1e3238e3e">


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

