class Speak

  def add_yo(arg)
    arg + ", yo"
  end

end

# puts Speak.new.add_yo("17")

# don't forget to manipultate input file with one `>`

class Action

  def run
    file = File.open("input.txt")
    data = file.read
    file.close

    File.open("output.txt", "w") { |file| file.write(
      "Odd?: #{data.to_i.odd?}; Meets threshold?: #{data.to_i > 100}"
    ) }
  end

end

Action.new.run
