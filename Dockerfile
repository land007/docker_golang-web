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
RUN go get -u github.com/nfnt/resize
#RUN go get github.com/tools/godep
RUN go get github.com/satori/go.uuid github.com/robfig/cron

#图片exif
RUN go get -u github.com/disintegration/imaging
RUN go get -u github.com/rwcarlsen/goexif/exif
RUN mkdir /usr/local/go/path/src/exiffix
ADD gopath/src/exiffix/decode.go /usr/local/go/path/src/exiffix
RUN ls /usr/local/go/path/src/exiffix
RUN cd /usr/local/go/path/src/exiffix && go build && go install
RUN ls /usr/local/go/path/bin

#docker stop golang-web ; docker rm golang-web ; docker run -it --privileged --name golang-web -p 20022:20022 land007/golang-web:latest
