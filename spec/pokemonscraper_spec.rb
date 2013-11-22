require "../lib/pokemonscraper"

describe PokemonScraper, "#get_pokemon_name" do
	
	it "should return the name of the Pokemon given the URL" do
		expect(PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/Whimsicott_(Pok%C3%A9mon)").get_pokemon_name).to 
		eq("Whimsicott")
	end

end