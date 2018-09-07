# frontplate-cli-docker
Docker Image for Frontplate CLI

The built image is available on [Docker Hub (`liginccojp/frontplate-cli-docker`)](https://hub.docker.com/r/liginccojp/frontplate-cli-docker/)

## Usage

Run this image using Docker on your local machine. Then it [triggers `npm install` and `frp build -p`](https://github.com/liginc/frontplate-cli-docker/blob/master/node8-npm4-frp4/install-and-build.sh) inside the container.

```sh
docker run \
    -it --rm \
    -v $(pwd):/workspace:rw \
    liginccojp/frontplate-cli-docker:node8-npm4-frp4
```

:warning: Note that you may need to change the local workspace path (`$(pwd)` part in the volume link option `-v`) to the proper path to where the source code set is located, if you are trying to perform this command outside of the workspace.

### Advanced: Running custom command

You can also control which command to run on the container instead of the default one.

```sh
docker run \
    -it --rm \
    -v $(pwd):/workspace:rw \
    liginccojp/frontplate-cli-docker:node8-npm4-frp4 \
    frp build -p -c another.frp.config.json
```

