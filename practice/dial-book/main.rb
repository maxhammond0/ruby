dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |k, _|
    puts k
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |k, v|
    return v if key == k
  end
  'City not found'
end
 
# Execution flow
loop do
  print 'Do you want to find postcodes by city? (Y/N) '
  ans = gets.chomp.downcase
  break if ans != 'y'

  get_city_names(dial_book)
  print 'Enter city: '
  input = gets.chomp.downcase

  puts get_area_code(dial_book, input)
end
