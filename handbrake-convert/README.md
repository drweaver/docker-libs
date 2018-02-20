# handbrake-convert

## Tags

`latest` *([handbrake-convert/Dockerfile](https://github.com/drweaver/docker-libs/blob/master/handbrake-convert/Dockerfile))*

## Execution

A container holding HandbrakeCLI and script to recursively convert MKV files to MP4.

Mount folders you wish to convert under the /media folder

* Successfully coverted files are renamed to <name>.transcoded
* Failures are renamed to <name>.transcode-failed

Example execution:

```bash
docker run --rm --name handbrake-convert -v /mytvshows:/media/mytvshows -v /myfilms:/media/myfilms handbrake-convert
```

Default preset is Android 720p30, to change set the PRESET env on the command line e.g.

```bash
docker run --rm --name handbrake-convert --env PRESET="High Profile" -v /mytvshows:/media/mytvshows -v /myfilms:/media/myfilms handbrake-convert
```
