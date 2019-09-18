def nyc_pigeon_organizer(data)
  qualities = []
  quality_options = []
  genders = []
  locations = []
  q = 0
  qo = 0

  pigeon_list = data.reduce({}) { |top_hash, (top_key, top_value)|
    # top_value is the hash any of the three main qualities point to
    
    qualities[q] = top_key
    top_value.reduce({}) { |second_hash, (second_key, second_value)|
      # second_value is the array any quality option points to

      quality_options[qo] = second_key
      second_value.reduce({}) { |third_hash, element|
        # element is each name (class = string)
        
        puts "element: #{element}"
        puts "top_hash.has_key?(element): #{top_hash.has_key?(element)}"
        # logic to avoid reassigning values when hash exists
        if top_hash.has_key?(element) == false
          top_hash[element] = {
          :color => [],
          :gender => [],
          :lives => []
          }
        end
        puts "top_hash[element]: #{top_hash[element]}"
        puts "top_key: #{top_key}"
        puts "top_hash[elment][top_key].push(second_key.to_s): #{top_hash[elment][top_key].push(second_key.to_s)}"
      }
      
      qo += 1
    }
    
    q += 1
    top_hash
  }
  
  puts "QUALITIES"
  p qualities
  puts "OPTIONS"
  p quality_options
  puts "NAMES"
  p names
  
  p pigeon_list
  
end


    