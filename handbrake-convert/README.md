# handbrake-convert

## Tags

`latest` *([handbrake-convert/Dockerfile](https://github.com/drweaver/docker-libs/blob/master/handbrake-convert/Dockerfile))*

## Execution

A container holding HandbrakeCLI and script to recursively convert MKV/AVI files to MP4.

After converting all files, the script will sleep for 3 hours and then try again.

Mount folders you wish to convert under the /media folder

* Successfully coverted files are renamed to <name>.transcoded
  * A file named .indexme is created in the folder to convenience indexing services
* Failures are renamed to <name>.transcode-failed

Example execution:

```bash
docker run --rm --name handbrake-convert \
  -v /mytvshows:/media/mytvshows -v /myfilms:/media/myfilms \
  handymoose/handbrake-convert
```

Default preset is Android 720p30, to change set the PRESET env on the command line
or alter the sleep time e.g.

```bash
docker run --rm --name handbrake-convert \
  --env PRESET="High Profile" \ 
  --env INTERVAL="30m"
  -v /mytvshows:/media/mytvshows -v /myfilms:/media/myfilms \ 
  handymoose/handbrake-convert
```
