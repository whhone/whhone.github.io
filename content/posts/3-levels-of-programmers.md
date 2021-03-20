+++
title = "3 Levels of Programmers"
tags = ["software-engineering"]
date = 2021-02-27
draft = false
+++

This post categorizes programmers into 3 levels by their abilities to read and write in these 3 programming styles.

## Level 1: Newbie Programmers

Programmers at this level can read and write the basic taught in "Introduction to XXX Programming". They use indexed for loop or while loop for all repeated logic as these are the only options for them. Programmers at this level can read and write this code.

```dart
int sumOddValuesLevel1(List<int> list) {
    var sum = 0;
    for (var i = 0; i <= list.length; ++i) {
        if (list[i] % 2 == 1) {
            sum += list[i];
        }
    }
    return sum;
}
```

This code is long and wearying to read. It has more low-level details and mutable variables. It tends to contain bugs (e.g., the above for loop should use `<` instead of `<=`).

They are mostly fresh grads or junior programmers. Most of them will go to the next level with more industrial experience.

## Level 2: Ordinary Programmers

Programmers at this level can read and write the common patterns learned from experiences, like peer code review or reading existing codes. For example, after reading `.where` and for-in loop repeatedly in the codebase, level 2 programmers can read and write this code with ease *(they still have the option to use the indexed for loop whenever they think it works better)*.

```dart
int sumOddValuesLevel2(List<int> list) {
    final oddList = list.where((e) => e % 2 == 1);

    var sum = 0;
    for (final odd in oddList) {
        sum += odd;
    }
    return sum;
}
```

This code is better than `sumOddValuesLevel1`. It has fewer low-level details and mutable variables. From my experience, this is the norm of the industrial standard.

Most programmers will reach this level but will likely stop here.

## Level 3: Great Programmers

Programmers at this level know the options, can write the cleanest code, and use the best possible patterns, even if they are less common in the their codebases. In addition, they make these good patterns common.

They learn actively, beyond what they are seeing from peers' works. They learn each details of their programming languages. For example, even the high order functions like `fold` and `reduce` are not common in their codebase, level 3 programmers can still read and write this code with ease *(they still have the option to use the for-in loop above whenever they think it works better)*.

```dart
int sumOddValuesLevel3(List<int> list) =>
    list.where((e) => e.isOdd).fold(0, (p, e) => p + e);
```

This code is concise and clean, highly abstracted with clear intention (filter the list then reduce to a value). It contains no mutable variables (more "functional") and hard to hide bugs inside.

A programmer can reach this level with active learning (and/or if they are lucky to have awesome peers).

## Is Higher-Level Code More Readable?

The answer is both yes and no.

* For lower-level programmers, higher-level codes are harder to read because they are not familiar with the patterns. They avoid writing high-level codes or might even argue those codes are bad and less readable. As a metaphor, literature is hard to read for lower-level book readers.

* For higher-level programmers, higher-level codes could be more readable because they are more abstract with fewer details, and give explicit intentions. They can still read lower-level codes (and probably faster than lower-level programmers) but they might not like them because of the redundant details and possible bugs. As a metaphor, a higher-level book writer can express complex ideas accurately in concise sentences, with less common vocabularies/concepts. They are more readable to higher-level readers, who already know those vocabularies/concepts well.

## Conclusion

Higher-level programmers have the ability to read higher-level codes and the option to write higher-level codes. Whether or not to use higher-level codes involves factors like performance impacts in critical paths, programming languages, personal preferences, team cultures, and so on.

Also, the low-level and high-level programmer idea is not limited to programming style. It also applies to the ability to understand and apply design patterns, architectures, programming paradigms, and even transcending the engineering field.

To go higher-level,
* Active learning helps. It is the way to learn something we might haven't seen.
* Great peers are great. They bring higher-level patterns and codes to the team and teach the peers.

I hope myself and my peers go to a higher level and learn from each other :)
