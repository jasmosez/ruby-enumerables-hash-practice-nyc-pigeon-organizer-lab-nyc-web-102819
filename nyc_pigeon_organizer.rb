def nyc_pigeon_organizer(data)
  qualities = []
  quality_options = []
  genders = []
  locations = []
  names = []
  q = 0
  qo = 0
  n = 0
  
  pigeon_list = data.reduce({}) { |top_hash, (top_key, top_value)|
    qualities[q] = top_key
    
    top_value.reduce({}) { |second_hash, (second_key, second_value)|
      quality_options[qo] = second_key
      
      second_value.reduce({}) { |third_hash, third_key|
        if top_hash[third_key] != true
          top_hash[third_key] = {
          :color => [],
          :gender => [],
          :lives => []
          }
        end
        names[n] = third_key
        n += 1
      }
      
      qo += 1
    }
    
    q += 1
  }
  
  puts "QUALITIES"
  p qualities
  puts "OPTIONS"
  p quality_options
  puts "NAMES"
  p names
  
  p pigeon_list
  
end


    