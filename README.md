# Veilid Server - Docker
A simple docker setup for deploying a minimal configuration veilid server. For a point of reference, I am running this on a Raspberry Pi 4 currently without issues (although CPU usage does very briefly spike to around 15 to 20% every so often).

## Usage
1. Install veilid-cli on the host machine. Instructions can be found in the Veilid repo [here](https://gitlab.com/veilid/veilid/-/blob/main/INSTALL.md). Follow to the point of "Install Veilid", but only install `veilid-cli`
2. Build the image with one of the `build.sh` scripts or manually with the command contained therein. [Building for other CPU architectures requires QEMU to be installed.](https://docs.docker.com/build/guide/multi-platform/)
3. Run `docker compose up -d` with the docker compose script, or run the container directly with `docker run -d -p "127.0.0.1:5959:5959" veilid-server`