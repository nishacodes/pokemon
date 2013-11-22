require './lib/pokemonscraper.rb'
require './lib/pokemon.rb' # requires all files in lib directory

# create scraper
igglybuff_scraper = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/Igglybuff_(Pok%C3%A9mon)")

# use scraper method to get name and set to variable
pokemon_name = igglybuff_scraper.get_pokemon_name

# create Pokemon object with scraped name
mypokemon = Pokemon.new(pokemon_name)

# print object's name
puts mypokemon.name