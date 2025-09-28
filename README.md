Compile the slides by running the following container.

```
docker run --rm --name slides -v $(pwd)/slides:/usr/src/app -w /usr/src/app registry.gitlab.com/islandoftex/images/texlive:latest arara -v slides.tex

```

