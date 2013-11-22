class Whimsicott
  attr_reader :female_ratio
  attr_accessor :level, :leveling_rate, :type, :abilities, :catch_rate, :entry, :hp, :exp, :friendship

  LEARNSET = {  "Growth" => "Start",
                "Leech Seed" => "Start",
                "Mega Drain" => "Start",
                "Cotton Spore" => "Start",
                "Gust" => 10,
                "Tailwind" => 28,
                "Hurricane" => 46 }

  def initialize
    @level = 50 
    @leveling_rate = "medium fast"
    @type = ["Grass","Fairy"]
    @abilities = ["Prankster","Infiltrator", "Chlorophyll"]
    @catch_rate = 0.098
    @female_ratio = 0.50
    @entry = "Whimsicott can pass through the tiniest cracks like the wind, leaving fluffy white puffs in its wake."
    @hp = 60
    @exp = 168
    @friendship = 70
  end

  def level_up
    if exp > level**3
      level += 1
    end
  end

  def gain_exp new_exp
    exp += new_exp
  end

  def say_name
    "Whimsicott!"
  end

  
end

gus = Whimsicott.new

# http://bulbapedia.bulbagarden.net/wiki/Spritzee_(Pok%C3%A9mon)#Pok.C3.A9dex_entries