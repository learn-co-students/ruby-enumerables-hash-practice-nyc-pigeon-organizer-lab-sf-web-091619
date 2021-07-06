require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, value|
    value.each do |inside_value, all_names|
      all_names.each do |name|
        if !pigeon_list.has_key?(name) #if it doesnt have a string inside name.... ! = not btw
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(attributes) #if it doesnt have a string inside attributes....
          pigeon_list[name][attributes] = []
        end
        if !pigeon_list[name][attributes].include?(inside_value)
          pigeon_list[name][attributes] << inside_value.to_s # use << to add key, and turn into a string
        end
end
end
end

return pigeon_list
end
