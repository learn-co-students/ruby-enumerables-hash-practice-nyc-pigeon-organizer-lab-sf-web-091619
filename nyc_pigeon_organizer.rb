def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |key, value|
    value.each do |attribute, data|
      data.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        if !new_hash[name][key].include?(attribute)
          new_hash[name][key] << attribute.to_s
        end
      end
    end
  end
new_hash
end
