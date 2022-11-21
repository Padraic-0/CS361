# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
food = "1"
def eat(food = "Tacos")
    puts "hello"
  end
eat()
puts food
def modified_name(choose, name)
  if not choose
  split_name = @name.split
  reversed_name_components = split_name.reverse
  new_name1 = reversed_name_components.join(' ')
  return new_name1
  end
  if choose
    split_name2 = @name.split
    reversed_name_components2 = split_name2.reverse
    reversed_name_components2 << "Borg"
    new_name2 = reversed_name_components2.join(' ')
    return new_name2
  end
end

puts "New name: #{modified_name(false,@name)}"
puts "New borg name: #{modified_name(true,@name)}"