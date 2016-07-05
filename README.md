# docker-mkdocs
Deploy .md files using MkDocs and nginx in a docker container

## prerequisites

* Docker for Mac or Windows (v1.12.0-rc2 or above)

### usage

`$ docker build -t mkdocs:1.0 .`

`$ docker run -d -p 8080:80 -t mkdocs:1.0`

open the browser and hit [port 8080](http://localhost:8080)

### references

[Writing MkDocs](http://www.mkdocs.org/user-guide/writing-your-docs)
[MkDocs Themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes)
