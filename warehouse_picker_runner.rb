require_relative './warehouse_picker'

# Given a bay, returns the item in that bay
bay_item = get_item_from_bay('b5')
puts "Item at b5 found is #{bay_item}, expect it to be nail filer"

# Given an item return the bay that it is in.
item_bay = get_bay_by_item('nail filer')
puts "The item nail filer can be found in bay #{item_bay}, expect it to be b5"

# Given a list of bays, list the items in those bays
item_list = get_item_from_bay_list(['b5', 'b10', 'b6'])
puts "The items in bays b5, b10 and b6 are:- "
item_list.each {|item| puts item}
puts "Should be nail filer, cookie jar, and tooth paste"