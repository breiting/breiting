This directory contains LaTeX template files which are automatically picked up by pandoc.

For more information please visit the original author's page:

https://github.com/Wandmalfarbe/pandoc-latex-template

You can easily convert a Markdown file using this template by executing the following command:

```
pandoc file.md -o out.pdf --template robotic --listings
```

The following preamble should be part of your Markdown file:

```
---
title: "My Title"
author: Bernhard Reitinger
company: Robotic Eyes GmbH
date: 2018-02-20
subtitle: "Technical Report"
titlepage: true
logo: logo.png
titlepage-text-color: f39300
titlepage-rule-color: f39300
titlepage-rule-height: 1
...

```

Please note that the logo has to point to an image file which resides in the same directory.
