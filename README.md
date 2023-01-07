# Notes

Turn images with ordered names into videos:

```sh
ffmpeg -framerate 1 -i [name]%d.png -r 30 [output].webm
```
