def nyc_pigeon_organizer(data)
  qualities = []
  colors = []
  genders = []
  locations = []
  names = []
  i = 0
  
  pigeon_list = data.reduce({}) {
    |top_hash, (key, value)|
    qualities[i] = key
    value.reduce({}) {
      |second_hash, (k, v)|
      
    }
    i += 1
  }
end


    