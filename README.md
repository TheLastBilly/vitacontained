# [VitaContained](https://hub.docker.com/repository/docker/thelastbilly/vitacontained)
A container image with a working PS Vita development environment

## Usage
- Pull the image from this repository
```bash
docker pull thelastbilly/vitacontained:latest
``` 

- Start the container's shell in your current directory
```bash
bash -c "docker run -ti -p 4358:22 -v '$PWD:/mnt/share' thelastbilly/vitacontained:latest"
```
