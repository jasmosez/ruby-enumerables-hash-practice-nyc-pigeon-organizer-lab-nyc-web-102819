def nyc_pigeon_organizer(data)
  data.reduce({}) {
    |new_hash, (key, value)|
    puts "key"
    puts key.class
    puts key
    puts "value"
    puts value.class
    puts value
    puts ""
  }
end