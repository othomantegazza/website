# My Personal Website

This is the source and content for my personal website, deployed at [othomantegazza.com](othomantegazza.com).

The content of this report is licensed as detailed in the [LICENSE file](LICENSE).


# Notes

Turn images with ordered names into videos:

```sh
ffmpeg -framerate 1 -i [name]%d.png -r 30 [output].webm
```

Deploy to test

```sh
netlify deploy --dir=docs --alias=test
```
