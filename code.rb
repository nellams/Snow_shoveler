# 0 - 49 cubic ft:  $20
# 50 - 149 cubic ft: $50
# 150 - 299 cubic ft: $100
# 300+ cubic ft: $150

puts "How many feet long is your driveway?"
length = gets.chomp
puts "How many feet wide?"
width = gets.chomp
puts "How many inches of snow is there?"
snow_hight = gets.chomp.to_f / 12

cubic_feet_of_snow = length.to_f * width.to_f * snow_hight

case
when (cubic_feet_of_snow).round <= 49
  price = "$20"
when (cubic_feet_of_snow).round >= 50 && (cubic_feet_of_snow).round <= 149
  price = "$50"
when (cubic_feet_of_snow).round >= 150 && (cubic_feet_of_snow).round <= 299
  price = "$100"
end

puts "Your driveway has " + cubic_feet_of_snow.round.to_s + " cubic feet of
snow."
puts "This amount of snow will cost " + price + " to remove."
