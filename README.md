# node-api-docker | Examplo for the community, subjected for changes or needs |
##### NodeJS API _runing_ at a container in Docker
#
#
### the project is very easy to install and deploy in a Docker container.
By default, the Docker will expose port `8000`, so change this within the
Dockerfile if necessary. When ready, simply use the Dockerfile to
build the image.
```sh
docker build . -t node-api-docker
```
This will create the image and pull in the necessary dependencies.
Be sure to swap out `${package.json.version}` with the actual
version of API.

Once done, run the Docker image and map the port to whatever you wish on
your host. In this example, we simply map port `3000` of the host to
port `8000` of the Docker (or whatever port was exposed in the Dockerfile):
```sh
docker run -d -p 8000:3000 --restart=always --name=node-api-docker node-api-docker
```
Verify the deployment by navigating to your server address inyour preferred browser.
```sh
curl http://localhost:8000
```
### more details
#
```sh
view process:
ps -a
----------------------------------------------------------------------------------------------
login docker:
docker login
----------------------------------------------------------------------------------------------
list active containers:
docker container ls
----------------------------------------------------------------------------------------------
kill container process:
docker rm -f <CONTAINER_ID>
----------------------------------------------------------------------------------------------
building image in the container:
docker build . -t node-api-docker
----------------------------------------------------------------------------------------------
exec imagem in container:
docker run -p 8000:3000 node-api-docker
OBS: [external]8000:3000[internal]
!important: the next command exec with -e (envoriments of Docker with high priority)
docker run -p 8000:5000 -e PORT=9000 nodebr-api
----------------------------------------------------------------------------------------------
the below file is util in compacting files of deploy in the docker:
.dockerignore (file) example: /node_modules
----------------------------------------------------------------------------------------------
creting tags on Docker:
docker tag node-api-docker guizaramellaf/node-api-docker
----------------------------------------------------------------------------------------------
upping push to repository:
docker push guizaramellaf/node-api-docker
```
more: hub.docker.com

#
#
> “O espaço entre a teoria e a prática não é tão grande como é, a teoria na prática.”
#
#

## Installation

Requires [Node.js](https://nodejs.org/) v17+ to run.

Install the dependencies and devDependencies and start the server.

```sh
npm i // download node_modules
npm run dev // run in nodemon mod
npm start // default run
```

## Plugins

| Plugin | README |
| ------ | ------ |
| Express | [Click Here](http://expressjs.com) |

## License
**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>


   [PlDb]: <https://expressjs.com/pt-br/>
   [PlGh]: <https://expressjs.com/pt-br/>
   [PlGd]: <https://expressjs.com/pt-br/>
   [PlOd]: <https://expressjs.com/pt-br/>
   [PlMe]: <https://expressjs.com/pt-br/>
   [PlGa]: <https://expressjs.com/pt-br/>
