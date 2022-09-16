# travel-guide-ruby-backend

This is a Sinatra application providing a REST
API to the travel-guide-ruby-frontend React App.

`config.ru` contains Rack configuration for CORS, JSON parser and runs the application controller

## Install

    bundle install

## Run the app

    bundle exec rake server

## test association methods and custom methods with pry

    bundle exec rake console

# REST API

The REST API to the travel-guide-ruby-frontend React App is described below.

## Get list of Cities

### Request

`GET /cities`

    curl -i -H 'Accept: application/json' http://localhost:9292/cities

### Response

    HTTP/1.1 200 OK
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 8

    []

## Get list of Cities by criteria (for ranking)
Criteria includes employment_rate, crime_rate and minimum_wage.
Cities are arranged in descending order

### Request

`GET /cities/rank_by/:rank`

    curl -i -H 'Accept: application/json' http://localhost:9292/cities/rank_by/crime_rate

### Response

    HTTP/1.1 200 OK
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 8

    []

## Get list of Users

### Request

`GET /users`

    curl -i -H 'Accept: application/json' http://localhost:9292/users

### Response

    HTTP/1.1 200 OK
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 8

    []

## Get a specific city

### Request

`GET /cities/:id`

    curl -i -H 'Accept: application/json' http://localhost:9292/cities/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 141

    {}

## Get a non-existent city

### Request

`GET /cities/:id`

    curl -i -H 'Accept: application/json' http://localhost:9292/cities/106698383

### Response

    HTTP/1.1 404 Not Found
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 404 Not Found
    Connection: close
    Content-Type: application/json
    Content-Length: 35

    {"status":404,"reason":"Not found"}

## Create new review

### Request

`POST /reviews`

    curl -i -H 'Accept: application/json' -d 'comment=great' http://localhost:9292/reviews

### Response

    HTTP/1.1 201 Created
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 201 Created
    Connection: close
    Content-Type: application/json
    Location: /reviews/9
    Content-Length: 9

    {"id":9,"comment":"great"}

## Change a review

### Request

`PATCH /reviews/:id`

    curl -i -H 'Accept: application/json' -X PATCH -d 'comment=good' http://localhost:9292/reviews/9

### Response

    HTTP/1.1 200 OK
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 10

    {"id":9,"comment":"good"}

## Delete a Review

### Request

`DELETE /reviews/:id`

    curl -i -H 'Accept: application/json' -X DELETE http://localhost:9292/reviews/9

### Response

    HTTP/1.1 204 No Content
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 204 No Content
    Connection: close


## Try to delete same Review again

### Request

`DELETE /reviews/:id`

    curl -i -H 'Accept: application/json' -X DELETE http://localhost:9292/reviews/9

### Response

    HTTP/1.1 404 Not Found
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 404 Not Found
    Connection: close
    Content-Type: application/json
    Content-Length: 35

    {"status":404,"reason":"Not found"}

## Get deleted Review

### Request

`GET /reviews/:id`

    curl -i -H 'Accept: application/json' http://localhost:9292/reviews/9

### Response

    HTTP/1.1 404 Not Found
    Date: Thu, 16 Sept 2022 12:36:30 GMT
    Status: 404 Not Found
    Connection: close
    Content-Type: application/json
    Content-Length: 35

    {"status":404,"reason":"Not found"}








