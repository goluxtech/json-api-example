Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :urls
	jsonapi_resources :contents
end



# curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"url", "attributes":{"url":"https://goluxtech.com"}}}' http://localhost:3000/urls