require './etl_dependencyInjection_SRP_Testing.rb'

describe Speak do

  it "adds yo to whatever you pass it" do
    result = Speak.new.add_yo("15")
    expect(result).to eq "15, yo"
  end

end
