# ex2
Am instalat imaginea de docker: "python:3.13.0a4-slim-bullseye" de pe docker registry

AM setat working directory in /code

Am setat variabila de mediu MY_ENV_VAR = john

Am copiat fisierul app.py in imaginea docker

Si am pus ca in momentul in care se ruleaza containerul sa fie rulata comanda (python app.py)

Pentru build-ul imaginii am folosit comanda (docker build -t pythonapp .) .

Iar pentru rulare am folosit (docker run --rm -it pythonapp).

Am tagat imagea cu robyroby2/pythonapp si am urcat-o pe https://hub.docker.com/repository/docker/robyroby2/pythonapp/general