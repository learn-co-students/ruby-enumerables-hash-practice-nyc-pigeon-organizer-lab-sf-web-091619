def nyc_pigeon_organizer(data)
 pigeon_list = {}
 data.each do |keys, values|
   values.each do |value, names|
     names.each do |name|
       if !pigeon_list[name]
         pigeon_list[name] = {}
         pigeon_list[name][keys] = []
         pigeon_list[name][keys] << value.to_s
       else
        if pigeon_list[name][keys]
          pigeon_list[name][keys] << value.to_s
        else
          pigeon_list[name][keys] = []
          pigeon_list[name][keys] << value.to_s
        end
       end
     end
   end
  end

pigeon_list          
end


nyc_pigeon_organizer({
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})