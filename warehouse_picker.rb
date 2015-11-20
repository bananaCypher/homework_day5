require 'pry-byebug'

BAYS = [
  {
    'bay' => 'bath fizzers',
    'item' => 'bath fizzers',
    'bay_letter' => 'b',
    'bay_number' => 7
  },
  {
    'bay' => 'a3',
    'item' => 'blouse',
    'bay_letter' => 'a',
    'bay_number' => 3
  },
  {
    'bay' => 'a7',
    'item' => 'bookmark',
    'bay_letter' => 'a',
    'bay_number' => 7
  },
  {
    'bay' => 'c8',
    'item' => 'candy wrapper',
    'bay_letter' => 'c',
    'bay_number' => 8
  },
  {
    'bay' => 'c3',
    'item' => 'chalk',
    'bay_letter' => 'c',
    'bay_number' => 3
  },
  {
    'bay' => 'b10',
    'item' => 'cookie jar',
    'bay_letter' => 'b',
    'bay_number' => 10
  },
  {
    'bay' => 'b9',
    'item' => 'deodorant',
    'bay_letter' => 'b',
    'bay_number' => 9
  },
  {
    'bay' => 'c2',
    'item' => 'drill press',
    'bay_letter' => 'c',
    'bay_number' => 2
  },
  {
    'bay' => 'c6',
    'item' => 'face wash',
    'bay_letter' => 'c',
    'bay_number' => 6
  },
  {
    'bay' => 'a9',
    'item' => 'glow stick',
    'bay_letter' => 'a',
    'bay_number' => 9
  },
  {
    'bay' => 'a4',
    'item' => 'hanger',
    'bay_letter' => 'a',
    'bay_number' => 4
  },
  {
    'bay' => 'c10',
    'item' => 'leg warmers',
    'bay_letter' => 'c',
    'bay_number' => 10
  },
  {
    'bay' => 'a8',
    'item' => 'model car',
    'bay_letter' => 'a',
    'bay_number' => 8
  },
  {
    'bay' => 'b5',
    'item' => 'nail filer',
    'bay_letter' => 'b',
    'bay_number' => 5
  },
  {
    'bay' => 'a1',
    'item' => 'needle',
    'bay_letter' => 'a',
    'bay_number' => 1
  },
  {
    'bay' => 'c7',
    'item' => 'paint brush',
    'bay_letter' => 'c',
    'bay_number' => 7
  },
  {
    'bay' => 'b4',
    'item' => 'photo album',
    'bay_letter' => 'b',
    'bay_number' => 4
  },
  {
    'bay' => 'b3',
    'item' => 'picture frame',
    'bay_letter' => 'b',
    'bay_number' => 3
  },
  {
    'bay' => 'a10',
    'item' => 'rubber band',
    'bay_letter' => 'a',
    'bay_number' => 10
  },
  {
    'bay' => 'a5',
    'item' => 'rubber duck',
    'bay_letter' => 'a',
    'bay_number' => 5
  },
  {
    'bay' => 'c1',
    'item' => 'rusty nail',
    'bay_letter' => 'c',
    'bay_number' => 1
  },
  {
    'bay' => 'b2',
    'item' => 'sharpie',
    'bay_letter' => 'b',
    'bay_number' => 2
  },
  {
    'bay' => 'c9',
    'item' => 'shoe lace',
    'bay_letter' => 'c',
    'bay_number' => 9
  },
  {
    'bay' => 'a6',
    'item' => 'shovel',
    'bay_letter' => 'a',
    'bay_number' => 6
  },
  {
    'bay' => 'a2',
    'item' => 'stop sign',
    'bay_letter' => 'a',
    'bay_number' => 2
  },
  {
    'bay' => 'c5',
    'item' => 'thermometer',
    'bay_letter' => 'c',
    'bay_number' => 5
  },
  {
    'bay' => 'b1',
    'item' => 'tyre sing',
    'bay_letter' => 'b',
    'bay_number' => 1
  },
  {
    'bay' => 'b8',
    'item' => 'tissue box',
    'bay_letter' => 'b',
    'bay_number' => 8
  },
  {
    'bay' => 'b6',
    'item' => 'tooth paste',
    'bay_letter' => 'b',
    'bay_number' => 6
  },
  {
    'bay' => 'c4',
    'item' => 'word search',
    'bay_letter' => 'c',
    'bay_number' => 4
  },
]

def get_item_from_bay(bay_key)
  BAYS.detect{|bay| bay_key == bay['bay']}['item']
end

def get_bay_by_item(item)
  BAYS.each {|bay| return bay['bay'] if bay['item'] == item}
end

def get_items_from_bay_list(bay_list)
  item_list = []
  bay_list.each {|bay| item_list.push(get_item_from_bay(bay))}
  item_list
end

def get_bays_from_item_list(item_list)
  bay_list = []
  item_list.each {|item| bay_list.push(get_bay_by_item(item))}
  bay_list
end

def get_bay_value(bay)
  bay[1,test.length].to_i
end

def get_items_from_bay_list_with_distance(bay_list)
  bays = get_items_from_bay_list(bay_list)
  bay_values = bays.map {|bay| get_bay_value(bay)}
  binding.pry
end