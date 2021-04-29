# Symfony docker

## Run
> make init

Url: localhost:9999

## Tank
> docker run -v $(pwd):/var/loadtest -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent --net host -it direvius/yandex-tank
