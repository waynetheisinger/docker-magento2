# docker-magento2
Extends alexcheng/magento2 to add a few useful cli scripts

CLI commands can be triggered by running:
```
docker-compose run --rm web mycliscript command params
```
The above is bit much to type so why not add some functions to your `.bash_profile`

```
function rcomposer { docker-compose run --rm web docked-composer $*;}
function rmagento { docker-compose run --rm web magento-command $*;}
function rmagerun { docker-compose run --rm web magerun2 $*;}
```
allowing you to run things like:
```
rcomposer list
```
Shell access to a new CLI container can be triggered by running:

```
docker-compose run --rm web bash
```
or to a running Container
```
docker exec -it containername bash
```
Again you can shorten this by adding a couple more functions to your `.bash_profile`
```
function rbash() { docker-compose run --rm web bash; }
function ebash() { docker exec -it $* bash; }
```
Usage for a new container:

```
rbash
```
Or existing container
```
ebash containername
```
