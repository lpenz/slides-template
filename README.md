# slides-template


## What do we have here

[This repository](https://github.com/lpenz/slides-template/) has a
markdown-based slide presentation, and it can also be used as a
template.

And this `README.md` file **is** the presentation example.


## Writing the slides

- Write [markdown](https://www.markdownguide.org/)
- Render with [pandoc](https://pandoc.org/)
- Into a [reveaj.js](https://revealjs.com/) slide deck

::: notes

And markdown is also available for the *presenter* notes.

:::


## `build.sh`

- Very simple script that does all of the work.
- Uses the [pandoc/core](https://hub.docker.com/r/pandoc/core) docker image.
- Gets the input file, the output file and the title as arguments.

::: notes

This is the simplest thing that can possibly work

:::


# The power


## of markdown

Lists:

- **bold**
- *italic*
- ***bold-italic***

> blockquote


## of reveal.js

- Press "`o`" to have an overview of the 2D layout.
- Press "`s`" for the speaker notes

::: notes

Which include the text in these blocks

:::


## of pandoc

(probably)

- Some math formulas:
$$ e^{i \pi} - 1 = 0 $$
- Easy speaker notes.

::: notes

With a simple notation that blends into the markdown text.

:::


# More examples

We can add code with syntax highlight:

```py
#!/usr/bin/env python3

def main():
    print("Hello, world!")

if __name__ == "__main__":
    main()
```

::: notes

A bit of python just for show.

:::


## 2D layout

All the power provided by [reveaj.js](https://revealjs.com/) and HTML
itself.

```html
<!DOCTYPE html>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <p><a href="#">Hello</a>, world!</p>
</body>
</html>
```


## Random image

![](https://picsum.photos/640/480)


# The end
