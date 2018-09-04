# frontplate-cli-docker
Docker Image for Frontplate CLI

The built image is available on [Docker Hub (`liginccojp/frontplate-cli-docker`)](https://hub.docker.com/r/liginccojp/frontplate-cli-docker/)

## Usage

Run this image using Docker on your local machine. Then it [triggers `npm install` and `frp build -p`](https://github.com/liginc/frontplate-cli-docker/blob/master/node8-npm4-frp4/install-and-build.sh) inside the container.

```sh
docker run \
    -it --rm \
    -v ./path/to/local/workspace:/workspace:rw \
    liginccojp/frontplate-cli-docker:node8-npm4-frp4
```

:warning: Note that you need to change the dummy path (`./path/to/local/workspace`) of the volume link option (`-v`) to the proper local path where the source code set is located.

### Advanced: Running custom command

You can also control which command to run on the container instead of the default one.

```sh
docker run \
    -it --rm \
    -v ./path/to/local/workspace:/workspace:rw \
    liginccojp/frontplate-cli-docker:node8-npm4-frp4 \
    frp build -p -c another.frp.config.json
```

