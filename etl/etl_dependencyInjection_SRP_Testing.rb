class Speak

  def add_yo(arg)
    arg + ", yo"
  end

end

# puts Speak.new.add_yo("17")

# don't forget to manipultate input file with one `>`


 
class Input 

  def getInput
    file = File.open("input.txt")
    data = file.read
    file.close
    data
  end

end

class Output

  def postOutput(dataToPost)
    File.open("output.txt", "w") { |file| file.write(dataToPost) }
  end


end

class Transformer

  def transform(input)
    "Odd?: #{input.to_i.odd?}; Meets threshold?: #{input.to_i > 100}"
  end

end

class Action

  def run(inputRetreiver, transformerThing, outputter)
    data = inputRetreiver()
    transformedData = transformerThing(data)
    outputter(transformedData)
    # data = Input.new.getInput
    # transformedData = Transformer.new.transform(data)
    # Output.new.postOutput(transformedData)
  end

end

Action.new.run



# FOR UNIT TESTING
# 1. It's ok to think
# 2. If completely lost, just right the test description
# 3. Wrap what you don't own; what is black box to you.
  # SRP
# 4. With whatever's left -- starting point is to organize your code into pure functions/methods as much as possible. Takes arguement(s), has return value -- and not matter what, if you pass the same args in, you always get the same results, the same value back.
  # Easier testing
  # SRP
  # Data structure - ok to be creative, so long the unit tests don't get ugly
# 5. For whatever is left, try to organize your code into things that call the pure functions and pass the right arguments along. Use dependency injection to make it testable -- project manager
