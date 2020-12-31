---
title: "The Hardest Make 24 Puzzles"
description: "The Hardest Make 24 Puzzles"
date: 2020-12-25
tags: ["math"]
draft: false
---

[Make 24](https://en.wikipedia.org/wiki/24_Game) is a traditional math game with simple rule -- given 4 numbers, you are asked to make 24 with addition `+`, subtraction `-`, multiplication `*` and division `/`. Each number should be used once and only once.

For example, `(3, 7, 2, 1) --> 3 * (7 + 2 - 1) = 24`.

Most Make 24 puzzles are easy but a few are extremely hard. This post collects some of the hardest puzzles and discuss them in 3 types. Before jumping into the solutions, let's take a while to try these 6 puzzles.

```plain
(1, 3, 9, 10)
(4, 4, 10, 10)
(1, 5, 5, 5)
(3, 3, 7, 7)
(3, 3, 8, 8)
(1, 4, 5, 6)
```

## Type 1 Puzzles

```plain
(1, 3, 9, 10) --> (1 + 10) * 3 - 9
(4, 4, 10, 10) --> (10 * 10 - 4) / 4
```

These puzzles have only one solution that are not simply multiplication like `(3 * 8)`, `(4 * 6)` or `(2 * 12)`. The solutions look simple but they are hard to come up with for most people.

## Type 2 Puzzles

```plain
(1, 5, 5, 5) --> 5 * (5 - 1 / 5)
(3, 3, 7, 7) --> 7 * (3 + 3 / 7)
```

These puzzles use division but the dividend is not divisible by the divisor. Some people might think this is violating the rule but of course it is not.

These puzzles share a common pattern -- `(x, y, z, z)` where `x * z + y = 24` or `x * z - y = 24`.

* Let `z = 5` in `(1, 5, 5, 5)`, then we have `5 * 5 - 1 = 24`.
* Let `z = 7` in `(3, 3, 7, 7)`, then we have `3 * 7 + 3 = 24`.

That means, since `2 * 9 + 6 = 24`, I can add a `9` to create a puzzle in this type.

```plain
(2, 6, 9, 9) --> 9 * (2 + 6 / 9)
```

## Type 3 Puzzles

```plain
(3, 3, 8, 8) --> 8 / (3 - 8 / 3)
(1, 4, 5, 6) --> 4 / (1 - 5 / 6)
```

These puzzles are the hardest of the hardest. Similar to type 2 puzzles, they use division while the dividend is not divisible by the divisor, but they don't have a simple pattern to spot them out easily.

Fortunately, these puzzles are extremely rare. These two are the only two if all numbers are less than or equal to 10. Just remember them.

*By the way, there is one more solution for `(1, 4, 5, 6)`. I will leave it for the clever readers.*
