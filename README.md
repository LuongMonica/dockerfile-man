# dockerfile-man
Dockerfile for an ubuntu container that has all the man pages installed 
```
git clone https://github.com/LuongMonica/dockerfile-man/#main
docker build -t ubuntu-man .
docker run -dit --name ubuntu-man ubuntu-man
```
OR build from URL
```
docker build -t ubuntu-man https://github.com/LuongMonica/dockerfile-man/#main
docker run -dit --name ubuntu-man ubuntu-man
```
