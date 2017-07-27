# dockerForJava

parant docker container for deploy java application

### Getting Started

You cat build your own images

* git clone https://github.com/oodmi/dockerForJava.git
* docker build -t TARGET_IMAGE[:TAG] .
* docker push TARGET_IMAGE[:TAG]

or use this image

* docker pull oodmi/java:latest

### Options

| Option | Default value |
| ------ | ------------- |
| MEMORY_MIN | 512m |
| MEMORY_MAX | 512m |
| GC_TYPE | UseG1GC |
| JAVA_OPTS | "" |
| VM_DEBUG | false |
| SERVER_PORT | 8080 |
| JMX_PORT | 8081 |
| TZ | "Europe/Moscow" |
| PROFILES | "dev" |

### Examples
Create a Dockerfile like this

    FROM oodmi/java:latest
    ADD build/libs/app-1.0.jar /app.jar

or can override options like this:

    FROM oodmi/java:latest
    ADD build/libs/app-1.0.jar /app.jar
    ENV JMX_PORT 8000
    ENV PROFILES "localhost"

## Authors

* **Dmitry Ovchinnikov** - [oodmi](https://github.com/oodmi)
