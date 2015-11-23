BAYS = [
  {
    'bay' => 'b7',
    'item' => 'bath fizzers',
    'value' => 27
  },
  {
    'bay' => 'a3',
    'item' => 'blouse',
    'value' => 8
  },
  {
    'bay' => 'a7',
    'item' => 'bookmark',
    'value' => 4
  },
  {
    'bay' => 'c8',
    'item' => 'candy wrapper',
    'value' => 18
  },
  {
    'bay' => 'c3',
    'item' => 'chalk',
    'value' => 13
  },
  {
    'bay' => 'b10',
    'item' => 'cookie jar',
    'value' => 30
  },
  {
    'bay' => 'b9',
    'item' => 'deodorant',
    'value' => 29
  },
  {
    'bay' => 'c2',
    'item' => 'drill press',
    'value' => 12
  },
  {
    'bay' => 'c6',
    'item' => 'face wash',
    'value' => 16
  },
  {
    'bay' => 'a9',
    'item' => 'glow stick',
    'value' => 2
  },
  {
    'bay' => 'a4',
    'item' => 'hanger',
    'value' => 7
  },
  {
    'bay' => 'c10',
    'item' => 'leg warmers',
    'value' => 20
  },
  {
    'bay' => 'a8',
    'item' => 'model car',
    'value' => 3
  },
  {
    'bay' => 'b5',
    'item' => 'nail filer',
    'value' => 25
  },
  {
    'bay' => 'a1',
    'item' => 'needle',
    'value' => 10
  },
  {
    'bay' => 'c7',
    'item' => 'paint brush',
    'value' => 17
  },
  {
    'bay' => 'b4',
    'item' => 'photo album',
    'value' => 24
  },
  {
    'bay' => 'b3',
    'item' => 'picture frame',
    'value' => 23
  },
  {
    'bay' => 'a10',
    'item' => 'rubber band',
    'value' => 1
  },
  {
    'bay' => 'a5',
    'item' => 'rubber duck',
    'value' => 6
  },
  {
    'bay' => 'c1',
    'item' => 'rusty nail',
    'value' => 11
  },
  {
    'bay' => 'b2',
    'item' => 'sharpie',
    'value' => 22
  },
  {
    'bay' => 'c9',
    'item' => 'shoe lace',
    'value' => 19
  },
  {
    'bay' => 'a6',
    'item' => 'shovel',
    'value' => 5
  },
  {
    'bay' => 'a2',
    'item' => 'stop sign',
    'value' => 9
  },
  {
    'bay' => 'c5',
    'item' => 'thermometer',
    'value' => 15
  },
  {
    'bay' => 'b1',
    'item' => 'tyre sing',
    'value' => 21
  },
  {
    'bay' => 'b8',
    'item' => 'tissue box',
    'value' => 28
  },
  {
    'bay' => 'b6',
    'item' => 'tooth paste',
    'value' => 26
  },
  {
    'bay' => 'c4',
    'item' => 'word search',
    'value' => 14
  },
]

# Helper functions
def get_bay_from_bay_key(bay_key)
  BAYS.detect{|bay| bay_key == bay['bay']}
end

def get_bay_from_item(item)
  BAYS.detect{|bay| item == bay['item']}
end

def get_bays_from_bay_list(bay_list)
  bay_list.map {|bay| get_bay_from_bay_key(bay)}
end

def get_bays_from_item_list(item_list)
  item_list.map {|item| get_bay_from_item(item)}
end

# Runner functions
def get_item_by_bay(bay)
  get_bay_from_bay_key(bay)['item']
end

def get_bay_by_item(item)
  get_bay_from_item(item)['bay']
end

def get_items_from_bay_list(bay_list)
  get_bays_from_bay_list(bay_list).map {|bay| bay['item']}
end

def get_bay_numbers_from_item_list(item_list)
  get_bays_from_item_list(item_list).map {|bay| bay['bay']}
end

def get_items_from_bay_list_with_distance(bay_list)
  bays = get_bays_from_bay_list(bay_list)
  bays.sort_by! {|bay| bay['value']}
  {items: get_items_from_bay_list(bay_list), distance: bays.last['value'] - bays.first['value']}
end

def get_bays_from_item_list_ordered(item_list)
  bays = get_bays_from_item_list(item_list)
  bays.sort_by {|bay| bay['value']}
end