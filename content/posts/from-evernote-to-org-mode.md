+++
title = "From Evernote to Org-Mode"
date = 2020-09-03
publishDate = 2020-09-03T00:00:00-07:00
aliases = ["/from-evernote-to-org-mode"]
tags = ["linux", "emacs", "privacy", "personal-development"]
draft = false
+++

Since 2017, Evernote has been my [productivity system](/productivity-system) for note-taking and task management. It has served me very well and I became a paid user. However, mentioned in the [last post](/arch-linux-full-disk-encryption/), I am pursuing more privacy in my digital life and Evernote becomes a loophole.

This post talks about the privacy concern, my research on the alternatives, and the switch to Org-Mode.


## 1. The Privacy Concern of Evernote {#1-dot-the-privacy-concern-of-evernote}

The user data in Evernote is [encrypted "during transport" and "at-rest"](https://evernote.com/security). This sounds secure to readers but actually not enough because Evernote can still see the content. Technically, it is still server-side encryption instead the client-side encryption (a.k.a. end-to-end encryption). The encryption key of the note content is held by the server instead of the client. If the server is hacked, or there is an evil employee, or Evernote needs to comply with legal obligations (i.e., the government asks for user data, and [it does](https://evernote.com/privacy/transparency-report)), those notes could be leaked.


## 2. Researching the Alternatives {#2-dot-researching-the-alternatives}

I started researching the alternatives which do not compromise privacy. That means end-to-end encryption is required if the data is hosted on a third-party. This requirement actually simplifies my curation because many solutions are ruled out, including the popular Notion and Roam (o:

My final shortlist included [**Org-Mode**](https://orgmode.org/), [**Joplin**](https://joplinapp.org/), [**Standard Note**](https://standardnotes.org/), [**Taskwarrior**](https://taskwarrior.org/), [**TODO.txt**](http://todotxt.org/), and [**TiddlyWiki**](https://tiddlywiki.com/). I gave each of them a try, reviewed and scored them with my requirements.

|                       | **Evernote** | **Org-Mode** | **Joplin** | **Standard Note** | **Taskwarrior** | **TODO.txt** | **TiddlyWiki** |
|-----------------------|--------------|--------------|------------|-------------------|-----------------|--------------|----------------|
| **Privacy**           | 1            | 5            | 5          | 5                 | 5               | 5            | 5              |
| **Task Management**   | 4            | 5            | 1          | 1                 | 5               | 5            | ?              |
| **Task Context**      | 5            | 4            | 4          | 5                 | 2               | 1            | ?              |
| **Linux Usability**   | 4            | 5            | 4          | 4                 | 3               | 3            | ?              |
| **Android Usability** | 5            | 3            | 3          | 4                 | 2               | 2            | ?              |
| **Synchronization**   | 5            | 4            | 5          | 5                 | 4               | 4            | ?              |
| **Total**             | 24           | 26           | 22         | 24                | 21              | 20           | ?              |

**Requirements:**

-   **Privacy**: Can I seclude my data?
-   **Basic Task Management**: Can I set a date for a task and then view all tasks for today?
-   **Task Context**: Can I add references (instruction, link) to the task?
-   **Linux Usability**: How usable is it on Linux?
-   **Android Usability**: How usable is it on Android?
-   **Synchronization**: How hard is it to synchronize data between Linux and Android?


### Review: Evernote (24) {#review-evernote--24}

Evernote has a reminder feature for simple task management, which is already enough for me. Since it is a note-taking app, I can add rich context like images or even audio seamlessly. Tusk makes it usabe on Linux and the official Android app is simply awesome. Synchronization works out-of-the-box.

However, it fails on the privacy bit.


### Review: Org-Mode (26) {#review-org-mode--26}

Org-Mode is for keeping notes, maintaining TODO lists, planning projects, and authoring documents with a fast and effective plain-text system. It is absolutely capable.

However, the learning curve of Org-Mode is steep and even steeper for non-Emacs users. Users are expected to read documentation and practice. Once familiarized with Emacs, its usability on Linux will jump from 0 to 5 (or even infinity). The Android client Orgzly is usable but could be better. Synchronization works with SyncThing.


### Review: Joplin (22) and Standard Note (24) {#review-joplin--22--and-standard-note--24}

Joplin and Standard Note are both strong note-taking alternatives to Evernote. However, they suck in task management because they simply cannot show all tasks scheduled for today. They both have a decent desktop app written in Electron. Synchronization works natively and usesr can turn on end-to-end encryption for privacy/security.

If task management is not a requirement, both Joplin and Standard Note are very good alternatives.


### Review: Taskwarrior (21) and TODO.txt (20) {#review-taskwarrior--21--and-todo-dot-txt--20}

Taskwarrior and TODO.txt are both FOSS for task management. However, they both allow only one line per task, which makes adding extra context to the task very hard. Their clients are barely usable to me (or I have not learned enough). Secure synchronization works with a self-hosted server or with SyncThing for Taskwarrior and TODO.txt respectively.


### Review: TiddlyWiki (?) {#review-tiddlywiki}

TiddlyWiki is a "non-linear personal web notebook". It looks fancy but I haven't tried it intensively because Org-Mode seems working for me already at this point. I will leave it as a question mark.


## 3. Switching to Org-Mode {#3-dot-switching-to-org-mode}

After all these explorations, Org-Mode looks promising to me and I started the Org-Mode/Emacs 30-day challenge -- keep using Org-Mode/Emacs for a month. Note that I was still using Evernote during the transition but gradually reducing the dependency on it.

I have now finished the challenge and can claim myself an Org-Mode user. I am happy with Org-Mode and the new workflow. Since the org files are in plain text, I manage my notes with Git, review, and polish all the changes before committing it. It helps to improve the quality of my notes!

Beyond Org-Mode, I also started seeing the beauty of Emacs and why people use it instead of Vim or other modern editors. Emacs is ostensibly an editor but actually a powerful Lisp platform/runtime, which makes it super extensible and capable. I am now using Emacs even more. For example, I replace Visual Studio Code, my previous editor/git porcelain, with  [Magit](https://magit.vc/). This blog post is written in Emacs with [ox-hugo](https://ox-hugo.scripter.co/). I probably will blog on these topics sometime in the future.

All in all, I am very happy with the privacy gain and the learning from this switch!