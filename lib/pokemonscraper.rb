require 'open-uri' 
require 'nokogiri' 
require 'debugger'

class PokemonScraper
	attr_reader :html
	
	def initialize (url)
		download = open(url)
		@html = Nokogiri::HTML(download) 
		@names
		@urls 
		@names_hash = {}
	end

	def get_pokemon_name
		name = html.search(".firstHeading").text.split(" ")[0]
		puts name 
	end

	def get_all_names
		names = html.search("tr td:nth-child(4) a").collect do |div|
			div.text
		end
		urls = html.search("tr td:nth-child(4) a").collect do |div|
			"http://bulbapedia.bulbagarden.net/" + div["href"]
		end 
		
	end
	def create_names_hash
		names.each do |name|
			urls.each do |url|
				names_hash[name] = url
			end
		end
	end
end

# ATTEMPT FOR ALL THE NAMES
pokemon = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_index_number_(Generation_V)")
pokemon.get_all_names
