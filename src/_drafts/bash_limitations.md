---
layout: post
title: "Writing future scripts in python"
tags: personal python bash
author: João Sá
published: false
---

## I, master BASHer

Bash is great if you know what you are doing[^pipefail].

Think BASH expansion magic, `|`, `[[` and other always available tools like `curl`, `jq` `xargs`, `find`, `mktemp` and even `tee`.

PS: I understand that `BASH_REMATCH` is also a useful tool to have available.

Scripts in BASH never really break so there is no constant maintenance overhead.

At work I've built tooling for mass push notification on Bash that was able to deliver 200k notifications in less than two minutes. — Basically just piping `psql --no-pager` output to `xargs` and executing `curl` with a whole bunch of `mktemp`, `tee` and a sprinkle of `at`.

So Bash is really great for small scripting needs and it's much better than most developers think for big scripting needs that are straightforward.

## But wait

What does straightforward mean?

Well, BASH is not so great with string manipulation and object manipulation (If you are a Wizard you can go pretty far in regards to string manipulation using `awk`, `tr`, `grep -E`, `jq` filters and others).

Another critic I have of bash for scripts is that I need to declare my functions before they are invoked.

This makes all somewhat bigger scripting needs require a `utils.sh` file for readability, but it also subtly increases development cost because BASH functions are just that — BASH functions.

## I, Python student

I will be giving python a go for my future scripting needs.

PPS: I mean I'm sure Bash is still better than Perl...

[^pipefail]: And by that I mean starting your scripts with `set -euo pipefail`
