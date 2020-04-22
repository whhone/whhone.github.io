---
title: "Kubernetes for Personal Projects"
slug: "kubernetes-for-personal-projects"
description: "This is about why I was not using Kubernetes personal projects."
date: 2019-12-29T20:18:22-08:00
---

*This is about why I was not using Kubernetes personal projects. If you are reading this post trying to set up Kubernetes, it will disappoint you.*

Yesterday, I saw a very cool self-hosted project ([anki-sync-server](https://github.com/ankicommunity/anki-sync-server)) and I would like to host it myself.

It had happened to me repeatedly that I hosted something (e.g., wordpress) and ended up giving them. It was mostly because I forgot the machine setup or the way those apps are being configured. They became burdens and I kill them to save the hosting cost.

However, technology keeps evolving! We now have Docker and Kubernetes for running portable containers. Configurations could be stored as Dockerfile in a git repository. The apps could be restored accurately. How cool it is to own a personal cluster? How cool it is to be able to launch random Docker containers in the cluster It is just super cool, at least from a software engineer's perspective.

Hence, I decided to set up a Kubernetes cluster on DigitalOcean this afternoon. My goal was to set up a cluster that allows me to launch whatever containers as easy as possible. My direction was to set up the Ingress and IngressController for routing the traffic to the right pod. If possible, I would try using NodePort instead of LoadBalancer [1] to avoid the extra $10 bucks per month.

Few hours past, I took a pause and went for a run. During the run, I concluded to give up. Here are the reasons.

First, the learning curve of Kubernetes is steep. That means the re-learning curve is also steep. Imagine that even if the cluster is set up today but I do not touch it for a few months (because I focus on other things later or life just does not allow me to spend more time on it), it is very likely that I will not be able to maintain it without going through a steep re-learning curve. It will likely become another burden that I choose to get rid of, again. The time I spent on setting up the cluster is gone.

Second, it is expensive for small project. Do you need a load balancer for an app that had very little QPS? It is just overkilled. You might argue that it is possible to avoid the load balancer [2]. However, these solutions (like setting up an extra Nginx with public IP as a proxy) are hacky to me. Hacky solutions increase the complexity / maintenance cost and thus more likely it becomes a burden in the future.

Everything comes with costs, the biggest is time, simply because it is limited. When you choose to do something, you are giving up another at the same time, inevitably. As of now, my priority is no longer playing with those self-hosted. Kubernetes is nice and all, but just not for me at this moment.

[1] https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types

[2] https://stackoverflow.com/questions/37792641/how-can-you-publish-a-kubernetes-service-without-using-the-type-loadbalancer-on
