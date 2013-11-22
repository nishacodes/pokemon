class Spritzee
	attr_reader :female_ratio
	attr_accessor :level, :leveling_rate, :type, :abilities, :catch_rate, :entry, :hp, :exp

	LEARNSET = {  "Sweet Scent" => "Start",
								"Fairy Wind" => "Start",
								"Sweet Kiss" => "Start",
								"Odor Sleuth" => "Start",
								"Echoed Voice" => 10,
								"Calm Mind" => 28,
								"Draining Kiss" => 46,
								"Aromatherapy" => 25,
								"Attract" => 29,
								"Moonblast" => 31,
								"Charm" => 35,
								"Flail" => 38,
								"Misty Terrain" => 42,
								"Skill Swap" => 44,
								"Psychic" => 48,
								"Disarming Voice" => 50}

	def initialize
		@level = 0 # ??
		@leveling_rate = "medium fast"
		@type = ["Fairy"]
		@abilities = ["Healer","Aroma Veil"]
		@catch_rate = 0.0
		@female_ratio = 0.50
		@entry = "It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten."
		@hp = 78
		@exp = 68
	end

	def level_up
	  if exp > @level**3
	    @level += 1
	  end
	end

	def gain_exp new_exp
	  exp += new_exp
	end

	def say_name
	  "Spritzee!"
	end

	
end

chris = Spritzee.new

# http://bulbapedia.bulbagarden.net/wiki/Spritzee_(Pok%C3%A9mon)#Pok.C3.A9dex_entries