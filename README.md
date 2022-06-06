# MLOPs_with_R

## WIP

### API

https://www.awattar.at/services/api/

### Check container

https://github.com/anchore/grype

### Versioning the model using Dockerfie

FROM python:3.7
ARG VERSION
LABEL org.label-schema.version=$VERSION

http://label-schema.org/rc1/

docker build --build-arg VERSION=AutoML_287f444c -t flask-predict .
