class Url < ApplicationRecord
	has_many :contents
	after_create :create_contents

	def create_contents
		@doc = Nokogiri::HTML(RestClient.get(self.url))
		@doc.css('h1, h2, h3').each do |f|
			Content.create(url_id: self.id, content_type: f.name, text: f.text)
		end
		@doc.css('a').each do |f|
			if f['href'] != nil && f['href'].length >= 10
				Content.create(url_id: self.id, content_type: f.name, text: f['href'])
			end
		end
	end
end
