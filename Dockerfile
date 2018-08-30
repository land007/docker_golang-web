FROM land007/gocv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN go get github.com/oxequa/realize
RUN go get -u github.com/kataras/iris

#docker stop golang-web ; docker rm golang-web ; docker run -it --privileged --name golang-web -p 20022:20022 land007/golang-web:latest
