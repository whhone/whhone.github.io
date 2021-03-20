---
title: "Pacman / Yay"
tags: ["arch-linux"]
draft: true
---

## Pacman

### Remove unused packages (Orphans)

```bash
yay -Yc
pacman -Rns $(pacman -Qtdq)
```

### Get package information

```bash
pacman -Qi ${package}
yay -Ps
yay -Si ${package}
```

### Get package files

```bash
pacman -Qlq ${package} | grep /usr/bin/
```
