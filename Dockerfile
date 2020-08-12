FROM golang:1.15.0-alpine

WORKDIR /go/app

RUN apk add --no-cache git gcc g++ \
  && go get -v -u github.com/oxequa/realize \
  github.com/99designs/gqlgen \
  github.com/volatiletech/sqlboiler \
  github.com/volatiletech/sqlboiler/drivers/sqlboiler-mysql \
  github.com/nicksnyder/go-i18n/v2/goi18n \
  github.com/gobuffalo/packr/packr
