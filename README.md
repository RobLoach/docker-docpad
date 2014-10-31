# Deprecated

This has moved over to [DocPad's Dockerfile repostiroy](http://github.com/docpad/dockerfile).

Dockerfile that allows use of [DocPad](http://docpad.org).


## Install

1. Download [docker-docpad](http://github.com/robloach/docker-docpad):
``` bash
$ git clone https://github.com/RobLoach/docker-docpad.git
```

2. Build the Docker image:
``` bash
$ sudo docker build -t="docpad" docker-docpad
```


## Usage

Generate using Docker:
``` bash
$ sudo docker run -i -t docpad generate
```

Run the site using Docker:
``` bash
$ sudo docker run -p 9778 -d docpad run
```
