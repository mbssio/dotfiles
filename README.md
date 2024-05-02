<!-- Please be careful editing the below HTML, as GitHub is quite finicky with anything that looks like an HTML tag in GitHub Flavored Markdown. -->
<p align="center">
  <img src="assets/banner.png" alt="Banner">
</p>
<p align="center">
  <b>Just my dotfiles</b>
</p>
<p align="center">
  <a href="https://github.com/mbssio/dotfiles/blob/master/LICENSE.md">
    <img alt="License Badge" src="https://img.shields.io/github/license/mbssio/dotfiles">
  </a>
</p>

## My Dotfiles

This repo uses [stow][] to manage the symlinks, but you don't **have** to --
you can also just individually symlink the contents of each directory directly
into your home.

If you want to use stow, clone this repository into `~/dotfiles` and do

```sh
cd ~/dotfiles && make
```

[stow]: https://www.gnu.org/software/stow/
