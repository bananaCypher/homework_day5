require_relative './warehouse_picker'

# Given a bay, returns the item in that bay
bay_item = get_item_by_bay('b5')
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
bay_list = get_bay_numbers_from_item_list(['shoe lace', 'rusty nail', 'leg warmers'])
puts "The bays that contain shoe lace, rusty nail and leg warmers are:-"
bay_list.each {|bay| puts bay}
puts "Should be c1, c9 and c10"

# Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. 
items_and_distance = get_items_from_bay_list_with_distance(['b5', 'b10', 'b6'])
puts "The items in bays b5, b10 and b6 are:-"
items_and_distance[0].each {|item| puts item}
puts "Should be nail filer, cookie jar and tooth paste.  And the distance between them is #{items_and_distance[1]}, should be 5"

items_and_distance = get_items_from_bay_list_with_distance(['b3', 'c7', 'c9', 'a3'])
puts "The items in bays b3, c7, c9 and a3 are:-"
items_and_distance[0].each {|item| puts item}
puts "Should be picture frame, paint brush, shoe lace and blouse.  And the distance between them is #{items_and_distance[1]}, should be 15"

# Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:
bays_in_order = get_bays_from_item_list_ordered(['shoe lace', 'rusty nail', 'leg warmers'])
puts "The bays in the order that need to be visited for shoe lace, rusty nail and leg warmers are:- "
bays_in_order.each_index {|index| puts "#{index + 1}: #{bays_in_order[index]['bay']} for #{bays_in_order[index]['item']}"}
puts "Should be c1 > c9 > c10"

bays_in_order = get_bays_from_item_list_ordered(['hanger', 'deodorant', 'candy wrapper', 'rubber band'])
puts "The bays in the order that need to be visited for hanger, deodorant, candy wrapper and rubber band are:- "
bays_in_order.each_index {|index| puts "#{index + 1}: #{bays_in_order[index]['bay']} for #{bays_in_order[index]['item']}"}
puts "Should be a10 > a4 > c8 > b9"
