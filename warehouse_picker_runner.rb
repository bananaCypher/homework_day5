require_relative './warehouse_picker'

# Given a bay, returns the item in that bay
bay_item = get_item_from_bay('b5')
puts "Item at b5 found is #{bay_item}, expect it to be nail filer"

# Given an item return the bay that it is in.
item_bay = get_bay_by_item('nail filer')
puts "The item nail filer can be found in bay #{item_bay}, expect it to be b5"

# Given a list of bays, list the items in those bays
item_list = get_items_from_bay_list(['b5', 'b10', 'b6'])
puts "The items in bays b5, b10 and b6 are:- "
item_list.each {|item| puts item}
puts "Should be nail filer, cookie jar, and tooth paste"

# Given a list of items find the bays.
bay_list = get_bays_from_item_list(['shoe lace', 'rusty nail', 'leg warmers'])
puts "The bays that contain shoe lace, rusty nail and leg warmers are:-"
bay_list.each {|bay| puts bay}
puts "Should be c1, c9 and c10"

# #Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. 
# items_and_distance = get_items_from_bay_list_with_distance(['b5', 'b10', 'b6'])
# puts "The items in bays b5, b10 and b6 are:-"
# items_and_distance[0].each {|item| puts item}
# puts "Should be nail filer, cookie jar and tooth paste.  And the distance between them is #{items_and_distance[1]}, should be 5"

# given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)