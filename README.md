# zshMusic
A cli tool to use apple music through your command line on MacOS. Feel free to make a branch and make any kind of modifications and make a PR to it, tbh I'll most likely merge it, or don't. This will remain unlicensed so do whatever you want with it.

## How to install

Download or clone down the repo & add this line to your .zshrc file
```bash
source ~/add-to-your-.zshrc/zshMusic/zshmusic.zsh
```

## How to use

| COMMAND  | CMD | DESCRIPTION                | USAGE                |
|----------|-----|----------------------------|----------------------|
| -open    | -o  | Launches Music             | `music -o`           |
| -vol     | -v  | Changes volume             | `music -v 10`        |
| -artist  | -a  | Plays artist from library  | `music -a metallica` |
| -stop    | -s  | Pauses Music               | `music -s`           |
| -play    | -p  | Plays Music                | `music -p`           |
| -next    | -n  | Skips song                 | `music -n`           |
| -current | -c  | Shows current track        | `music -c`           |
