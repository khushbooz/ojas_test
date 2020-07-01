# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#




# kindly replace (11..99) with (1111111111..9999999999) for change the range of numbers

(11..99).each_with_index do |index, n| 
  phones = Phone.create(number: index)
  puts "---index-------- #{index} -----------"
end
