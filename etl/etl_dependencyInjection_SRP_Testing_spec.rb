require './etl_dependencyInjection_SRP_Testing.rb'

describe Speak do

  it "adds yo to whatever you pass it" do
    result = Speak.new.add_yo("15")
    expect(result).to eq "15, yo"
  end

end


describe Transformer do

  it "indicates whether the input is odd" do
    # Arrange and act
    result = Transformer.new.transform("100")
    # assert
    expect(result).to eq "Odd?: false; Meets threshold?: false"
  end

  it "indicates whether the greater than 100 threshold is met" do
    # Arrange and act
    result = Transformer.new.transform("200")
    # assert
    expect(result).to eq "Odd?: false; Meets threshold?: true"
  end

end
