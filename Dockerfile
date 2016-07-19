FROM golang:1.6

RUN go get -u github.com/segment-sources/mongodb

# Additionally add a cron-like runner to run on an
# interval.
RUN go get -u github.com/segmentio/go-every

ENTRYPOINT ["mongodb"]