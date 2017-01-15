#!/usr/bin/env bash

npm install
npm start &

sleep 5

curl -X POST -H "Content-Type: application/json" -H "Cache-Control: no-cache" -H "Postman-Token: fae55431-fda2-8896-174c-e2d85d188571" -d '{
  "version": "1.0",
  "session": {
    "new": true,
    "sessionId": "SessionId.6c19ce28-6647-44c2-bd7e-e71b69925f0f",
    "application": {
      "applicationId": "amzn1.ask.skill.ab810de0-2786-40c0-aa7f-2a45effeffda"
    },
    "attributes": {},
    "user": {
      "userId": "amzn1.ask.account.AFHHA366XOPBLQ2FXBD5V2WQSFTW5K62SJIZNP4ZY2PVIK74EE52SYNHKIEW32DH7GDLWIB6Z7YKVLKJGNGZNOH65XLKKUIRPYFGVPRGVLIW3XM5MZOOSUWEZWW3WG3W5YABUYVPPC5BAK5YHH4U23PX5KXP3UYXLE223OAT7D7WPJ5623DYSDJLD6W5OYC43QWZLJUEGA6ROZY"
    }
  },
  "request": {
    "type": "LaunchRequest",
    "requestId": "EdwRequestId.42ac6fb5-b818-4ee2-8f30-44243ee180cd",
    "timestamp": "2017-01-14T02:06:48Z",
    "locale": "en-US"
  }
}
' "http://localhost:3000/test"
