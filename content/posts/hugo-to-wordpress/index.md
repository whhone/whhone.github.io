+++
title = "From Hugo to WordPress"
date = 2020-04-26
tags = ["writing"]
description = "I have been blogging with Hugo, a static site generator, for 5 months. Recently, I decided to ditch it and migrate to WordPress.Org for a more writer-friendly workflow. I want to spend more time and efforts on writing instead of coding."
aliases = ["/hugo-to-wordpress"]
+++

*(Update 2020-10: I am going back to Hugo and writing blog post with Emacs/easy-hugo.)*

I have been blogging with [Hugo](https://gohugo.io/), a static site generator, for 5 months. Recently, I decided to ditch it and migrate to [WordPress.Org](https://wordpress.org/) for a more writer-friendly workflow. I want to spend more time and efforts on writing instead of coding.

## The Developer-Writer Dilemma

Hugo is developer-friendly. It allows me to customize my site, in terms of the theme, layout, the content structure and also the [Hugo Shortcodes](https://gohugo.io/content-management/shortcodes/) very easily. I learned a lot when building the static site, the JAM stack concept, SCSS, HTML5 semantic tags, [Opengraph](https://ogp.me/), [Twitter Card](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/guides/getting-started), et cetera. I like how simple it is to bring up the site, without setting up the LAMP or LEMP stack.

WordPress is writer-friendly. It allows me to write anytime, anywhere. I can write posts from my computer or my phone. Its mobile app even works offline, without an internet connection. This is a gamer changer to me because I can spend my time writing while holding my little son Casper to sleep. Editing with the new [WordPress Block Editor (Gutenberg)](https://wordpress.org/gutenberg/), shipped with WordPress 5.0, is much efficient, when compared to editing Markdown.

Developer and writer are both the identities I assigned to myself. This creates a dilemma. When I think about the customization, being able to build my site, Hugo gets me. When I think about the writing experience, being able to write whenever and wherever I am, and focus on the sentences instead of the Markdown syntax, WordPress gets me.

Then, I asked myself — why did I start blogging as [the 2020 new year revolution](/2019-year-end-reflection/)?

## The Original Intention

Why did I start this blog? It was actually not because of the developer identity. I have already been a developer for years and this identity is entrenched, without a shadow of a doubt. Instead, the original intention was to become a writer, which is a new identity I am pursuing.

When I was using Hugo, I spent more time on tweaking the codes instead of writing things. I researched the best way of rendering an image in Markdown with Hugo. I organized the contents and reorganized them again to a “better” structure. I forked the theme I was using because I don’t like how it was implemented.

These are all fun things from a developer’s perspective, but not for a writer. Playing around the Markdown syntax is a distraction to the writing of the underlying sentences and ideas. Also, managing the posts in the WordPress admin console is actually more efficient, compared to the content directory.

## The Verdict – WordPress

> Redesign your life so the actions that matter most are also the actions that are easiest to do.
>
> *Atomic Habits, James Clear*


“Be a writer” was what brought me to the blogging new year revolution. WordPress allows me to spend more time and efforts on writing. Open the browser or app, write and publish. Writing in rich text is just much more intuitive than plain text markdown, even though I am very proficient at Markdown.

After the migration, I found two things that stand out.

1. **The writing experience with the WordPress Block Editor (Gutenberg)**. It is definitely much more powerful and easy than Markdown to build a web page with a rich layout.
2. **Search without an external search engine.** Get the latest search result within the site.
   The expense is the ability to customize the site easily and being able to manage all the configurations with our beloved version control git.

While the current trend in the industry seems to be moving from the LAMP-like stack or MEAN-like stack (Node.js) to the JAM-like stack (static site generator). I am in the opposite direction with most people. :p

**My ideal workflow is to have WordPress-like (anytime, anywhere with a decent editor) writer experience and Hugo-like developer experience.**

## Parting with Hugo

This is an amicable parting! I have to say that Hugo is an awesome static site generator. I enjoyed the experiences with it when building the first version of this blog and published the first few posts. Here are the merits:

1. **Hugo is easy to install.** I just need to download a single binary. While Jekyll (another static site generator need to pull a whole bunch of Ruby dependency.)
2. **Static site is very lightweight.** I can deploy the site to the free f1-micro instance with only 0.2 shared CPU and 0.6 GB memory.
3. **Hugo is very developer-friendly.** It has good documentation. The Hugo Pipe makes it super easy to customize the site with SASS/SCSS.

However, Hugo is not perfect and I struggled with it. Here are some complaints:

1. **Markdown is limited.** e.g., create a link that opens in a new tab (\<a\> with target="_blank") is not straight-forward and not standardized by the Markdown spec.
2. **Hugo does not have a good plugin system.** All features / plugins are coupled to the theme. If the theme does not provide the functionality I need, I am going to suffer, write my own, or fork the theme.
3. **Cannot write anytime, anywhere.** When I find a typo on my phone, I need to correct it right away.

I have a feeling that I will meet Hugo again, in another scenario, in the future.
