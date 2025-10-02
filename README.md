Compile the slides by running the following container.

```
docker run --rm --name slides -v $(pwd)/slides:/usr/src/app -w /usr/src/app registry.gitlab.com/islandoftex/images/texlive:latest arara -v slides.tex

```

Create exercise 1 by running the following command.

```bash
exercise1.sh >/dev/null 2>/dev/null
```
