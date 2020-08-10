# sisimai-server

## Run
```
$ bundle install
$ bundle exec ruby server.rb
```

or

```
$ docker build -t sisimai-server .
$ docker run -p 10000:10000 -d sisimai-server:latest
```

## Usage
```
$ curl -XPOST --data-urlencode "data=`cat mbox-1.txt`" localhost:10000/detect | jq .
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  4153  100   737  100  3416    729   3382  0:00:01  0:00:01 --:--:--  4111
{
  "catch": "",
  "token": "215b5491579ce262c868200ba0aadd2f348c3716",
  "lhost": "p0000-ipbfpfx00kyoto.kyoto.example.co.jp",
  "rhost": "mx.libsisimai.org",
  "alias": "",
  "listid": "",
  "reason": "userunknown",
  "action": "failed",
  "origin": "<MEMORY>",
  "subject": "バウンスメールのテスト(日本語)",
  "messageid": "E1C50F1B-1C83-4820-BC36-AC6FBFBE8568@example.org",
  "replycode": "550",
  "smtpagent": "RFC3464",
  "softbounce": 0,
  "smtpcommand": "",
  "destination": "libsisimai.org",
  "senderdomain": "example.org",
  "feedbacktype": "",
  "diagnosticcode": "550 5.1.1 <kijitora@libsisimai.org>... User Unknown",
  "diagnostictype": "SMTP",
  "deliverystatus": "5.1.1",
  "timezoneoffset": "+0900",
  "addresser": "kijitora@example.org",
  "recipient": "kijitora@libsisimai.org",
  "timestamp": 1381900535
}
```
