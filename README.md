<!-- Please be careful editing the below HTML, as GitHub is quite finicky with anything that looks like an HTML tag in GitHub Flavored Markdown. -->
<p align="center">
  <img src="assets/banner.png" alt="Banner">
</p>
<p align="center">
  <b>... just my dotfiles and some scripts</b>
</p>
<p align="center">
  <img alt="License Badge" src="https://img.shields.io/github/license/mbssio/dotfiles?style=for-the-badge&labelColor=%23363a4f&color=%23a6da95">
  <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/mbssio/dotfiles?style=for-the-badge&labelColor=%23363a4f&color=%23eed49f">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/mbssio/dotfiles?style=for-the-badge&labelColor=%23363a4f&color=%23c6a0f6">
</p>


I use [GNU Stow][] to manage the symlinks, but this is **optional** -
you can also just individually symlink the contents of each directory directly
into your home directory.

If you want to use Stow, clone this repository into `~/.dotfiles` and do

```sh
cd ~/.dotfiles && make
```

[GNU Stow]: https://www.gnu.org/software/stow/
