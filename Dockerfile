FROM land007/gocv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN GO111MODULE=on go get github.com/kataras/iris@master && \
	GO111MODULE=auto go get -u github.com/go-sql-driver/mysql && \
	GO111MODULE=auto go get -u github.com/gin-gonic/gin && \
	GO111MODULE=auto go get github.com/oxequa/realize && \
	GO111MODULE=auto go get github.com/gorilla/mux && \
	GO111MODULE=auto go get github.com/ivpusic/neo && \
	GO111MODULE=auto go get github.com/ivpusic/neo/cmd/neo && \
	GO111MODULE=auto go get github.com/BurntSushi/toml gopkg.in/mgo.v2 && \
	GO111MODULE=auto go get gopkg.in/go-playground/validator.v9 && \
	GO111MODULE=auto go get -u github.com/nfnt/resize && \
#	go get github.com/tools/godep
	GO111MODULE=auto go get github.com/satori/go.uuid github.com/robfig/cron && \
#图片exif
	GO111MODULE=auto go get -u github.com/disintegration/imaging && \
	GO111MODULE=auto go get -u github.com/rwcarlsen/goexif/exif && \
	GO111MODULE=on go get github.com/iris-contrib/middleware/cors && \
	mkdir /usr/local/go/path/src/exiffix
ADD gopath/src/exiffix/decode.go /usr/local/go/path/src/exiffix
RUN ls /usr/local/go/path/src/exiffix && \
	cd /usr/local/go/path/src/exiffix && go build && go install && \
	ls /usr/local/go/path/bin && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time && \
	echo "land007/golang-web" >> /.image_names && \
	echo "land007/golang-web" > /.image_name

#docker stop golang-web ; docker rm golang-web ; docker run -it --privileged --name golang-web -p 20022:20022 land007/golang-web:latest
