class Speak

  def add_yo(arg)
    arg + ", yo"
  end

end

# puts Speak.new.add_yo("17")


class Action

  def extract_transform_load
    file = File.open("input.txt")
    data = file.read
    file.close

    # puts data

    is_odd = data.to_i.odd?
    meets_threshold = data.to_i > 100

    File.open("output.txt", "w") { |file| file.write(
      "Odd?: #{is_odd}; Meets threshold?: #{meets_threshold}"
    ) }
    return
  end

end

puts Action.new.extract_transform_load
