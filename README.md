# docker-data-minimal
## Absolutely minimal container based on docker/scratch to act as data container

This work is based on investigation of the docker hello-world image along with the Adriaan de Jonge's excellent article on [creating the smallest possible Docker container](http://blog.xebia.com/create-the-smallest-possible-docker-container/).

Since docker would not allow you to create a container `FROM scratch`, a minimal data container needs to contain some entrypoint without OS being availble. For that reason, a simple static bound binary printing a message is provided, nothing else.

This image doesn't need to be run, simply creating the image locally is sufficient to use it as a data container abstraction. There won't be any harm caused when running it, though - it will simply exit with a message.

A typical usage to, providing a data container for PostgreSQL abstracting away the host directory /var/containerdata/postgres, would be as follows:
```
docker pull rgielen/docker-data-minimal
docker create -v /var/containerdata/postgres:/var/lib/pgsql/data --name postgres-data-store rgielen/docker-data-minimal
docker run -d --volumes-from postgres-data-store --name postgres-server postgres
```
