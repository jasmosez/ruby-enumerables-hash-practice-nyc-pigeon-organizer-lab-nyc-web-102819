def nyc_pigeon_organizer(data)
  qualities = []
  colors = []
  genders = []
  locations = []
  names = []
  i = 0
  
  pigeon_list = data.reduce({}) {
    |new_hash, (key, value)|
    qualities[i] = key
    value.reduce
    i += 1
  }
end


    