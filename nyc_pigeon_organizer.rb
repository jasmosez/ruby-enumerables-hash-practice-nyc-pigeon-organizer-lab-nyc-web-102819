def nyc_pigeon_organizer(data)
  qualities = []
  colors = []
  genders = []
  locations = []
  names = []
  q = 0
  c = 0
  
  pigeon_list = data.reduce({}) {
    |top_hash, (key, value)|
    qualities[q] = key
    value.reduce({}) {
      |second_hash, (k, v)|
      colors[c] = k
      c += 1
    }
    q += 1
  }
  
  puts "qualities"
  puts qualities
  puts "colors"
  puts colors
end


    