# How it works

Post a link to "['SERVER_URL']/urls" 
Example with curl:

		```
		curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"urls", "attributes":{"url":"https://goluxtech.com"}}}' http://localhost:3000/urls
		```

The app will save the link, parse the page and save the h1,h2,h3 tag content and
save the links. This is a restfull api so the endpoints are standard.

Example:
* /urls to get all urls
* /urls/4 to get specific url
* /url/4/contents to get content of a url
