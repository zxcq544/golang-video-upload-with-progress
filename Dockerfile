# syntax=docker/dockerfile:1

FROM golang:1.17-alpine
WORKDIR /app
COPY ./static/ ./static/
COPY ./vendor/ ./vendor/
COPY go.mod ./
COPY go.sum ./
COPY *.go ./
EXPOSE 9090
RUN go build -o /video_upload
CMD [ "/video_upload" ]
