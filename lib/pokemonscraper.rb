require 'open-uri' 
require 'nokogiri' 

class PokemonScraper
	attr_reader :html
	
	def initialize (url)
		download = open(url)
		@html = Nokogiri::HTML(download)  
	end

	def get_pokemon_name
		name = html.search(".firstHeading").text.split(" ")[0]
		name 
	end

end

igglybuff = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/Igglybuff_(Pok%C3%A9mon)")

igglybuff.get_pokemon_name