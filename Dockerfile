FROM land007/gocv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN go get -u github.com/kataras/iris
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/gin-gonic/gin
RUN go get github.com/oxequa/realize
RUN go get github.com/gorilla/mux
RUN go get github.com/ivpusic/neo
RUN go get github.com/ivpusic/neo/cmd/neo
RUN go get github.com/BurntSushi/toml gopkg.in/mgo.v2
RUN go get gopkg.in/go-playground/validator.v9
#RUN go get github.com/tools/godep

#图片exif
RUN go get -u github.com/disintegration/imaging
RUN go get -u github.com/rwcarlsen/goexif/exif
RUN mkdir $GOPATH/src/exiffix
COPY gopath/src/exiffix/decode.go $GOPATH/src/exiffix
RUN cd $GOPATH/src/exiffix && go build && go install

#docker stop golang-web ; docker rm golang-web ; docker run -it --privileged --name golang-web -p 20022:20022 land007/golang-web:latest
