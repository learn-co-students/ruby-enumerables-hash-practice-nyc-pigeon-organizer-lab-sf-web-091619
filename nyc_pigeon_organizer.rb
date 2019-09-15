def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.include?(name)
          new_hash[name] = {}
        end
        
        if !new_hash[name].include?(property)
          new_hash[name][property] = []
        end
        
        if !new_hash[name][property].include?(attribute)
          new_hash[name][property].push(attribute.to_s)
        end
      end
    end
  end
  new_hash
end
