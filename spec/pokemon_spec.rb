require "../lib/pokemon"

describe Pokemon, "#say_name" do
	
	it "should return the name of the Pokemon" do
		expect(Pokemon.new("Igglybuff").say_name).to eq("Igglybuff")
	end

end