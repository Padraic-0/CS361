# Name Mangler

@name = "Johanna Jackson"

def reverse_name(name)
  split_name = name.split
  reversed_name_components = split_name.reverse
  reversed_name = reversed_name_components.join(' ')
  return reversed_name
end

def borgify(name)
  reverse_name = reverse_name(name)
  return reverse_name += " Borg"
end

# Mangle the name by reversing it or borgifying it
def modified_name(choose, name)
  if choose == "reverse"
  return reverse_name(name)
  end
  
  if choose == "borg"
    return borgify(name)
  end
end

puts "New name: #{modified_name("reverse",@name)}"
puts "New borg name: #{modified_name("borg",@name)}"
