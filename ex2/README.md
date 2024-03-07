# ex2
I have installed the Docker image: "python:3.13.0a4-slim-bullseye" from the Docker registry.

I set the working directory to /code.

I set the environment variable MY_ENV_VAR = john.

I copied the file app.py into the Docker image.

I configured the container to execute the command (python app.py) upon startup.

For building the image, I used the command (docker build -t pythonapp .).

To run the container, I used (docker run --rm -it pythonapp).

I tagged the image as robyroby2/pythonapp and uploaded it to https://hub.docker.com/repository/docker/robyroby2/pythonapp/general.