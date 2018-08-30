FROM land007/gocv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN go get -u github.com/kataras/iris
RUN go get -u github.com/go-sql-driver/mysql
RUN go get github.com/oxequa/realize
RUN go get github.com/gorilla/mux
RUN go get github.com/BurntSushi/toml gopkg.in/mgo.v2

#docker stop golang-web ; docker rm golang-web ; docker run -it --privileged --name golang-web -p 20022:20022 land007/golang-web:latest
