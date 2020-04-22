---
title: "{{ replace .Name "-" " " | title }}"
slug: "{{ .Name }}"
description: "{{ replace .Name "-" " " | title }}"
thumbnail: "path/thumbnail.jpg"
date: {{ .Date }}
draft: true
---
