# How it works

Post a link to "['SERVER_URL']/url" :

	Example with curl:

		```
		curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"urls", "attributes":{"url":"https://goluxtech.com"}}}' http://localhost:3000/urls
		```

The app will save the link, parse the page and save the h1,h2,h3 tag content and
save the links