def nyc_pigeon_organizer(data)
pigeon_list = {}
  data.each do | color_gender_lives, value|
    values.each do |category, array|
      array.each do |name|
        pigeon_list[name] || = {}
        pigeon_list [name][color_gender_lives] || = []
        pigeon_list[name][color_gender_lives].push (category.to_s)
      end
    end
 end
  return pigeon_list
end
