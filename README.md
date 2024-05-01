## My Dotfiles

This repo uses [stow][] to manage the symlinks, but you don't **have** to --
you can also just individually symlink the contents of each directory directly
into your home.

If you want to use stow, clone this repository into `~/dotfiles` and do

```sh
cd ~/dotfiles && make
```

[stow]: https://www.gnu.org/software/stow/
