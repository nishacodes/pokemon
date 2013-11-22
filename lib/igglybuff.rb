class Igglybuff
	attr_reader :female_ratio, :male_ratio
	attr_accessor :level, :type, :abilities, :catch_rate, :entry, :hp, :exp, :friendship
	# table class="roundy" <tbody> <tr> <td> # the first td is the level, the second is the move
	LEARNSET = {  "Sing" => "Start",  
                "Charm" => "Start",
                "Defense Curl" => 5,
                "Pound" => 9,
                "Sweet Kiss" => 13,
                "Copycat" => 17 }

  def initialize
    @level = 5 
    @type = ["Normal","Fairy"]
    @abilities = ["Cute Charm", "Competitive", "Friend Guard"]
    @catch_rate = 0.222
    @female_ratio = 0.75
    
    @entry = "Instead of walking with its short legs, it moves around by bouncing on its soft, tender body."
    @hp = 90
    @exp = 42
    @friendship = 70
    @link = 0 # igglybuff needs a link of at least 50% to evolve into jigglypuff
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
    "Igglybuff!"
  end

  def evolve

  end
end


kate = Igglybuff.new

# http://bulbapedia.bulbagarden.net/wiki/Spritzee_(Pok%C3%A9mon)#Pok.C3.A9dex_entries