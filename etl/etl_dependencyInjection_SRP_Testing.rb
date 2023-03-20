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

class Action

  def run
    data = Input.new.getInput

    transformedData = "Odd?: #{data.to_i.odd?}; Meets threshold?: #{data.to_i > 100}"

    Output.new.postOutput(transformedData)
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
