BAYS = {
  'b7' => 'bath fizzers',
  'a3' => 'blouse',
  'a7' => 'bookmark',
  'c8' => 'candy wrapper',
  'c3' => 'chalk',
  'b10' => 'cookie jar',
  'b9' => 'deodorant',
  'c2' => 'drill press',
  'c6' => 'face wash',
  'a9' => 'glow stick',
  'a4' => 'hanger',
  'c10' => 'leg warmers',
  'a8' => 'model car',
  'b5' => 'nail filer',
  'a1' => 'needle',
  'c7' => 'paint brush',
  'b4' => 'photo album',
  'b3' => 'picture frame',
  'a10' => 'rubber band',
  'a5' => 'rubber duck',
  'c1' => 'rusty nail',
  'b2' => 'sharpie',
  'c9' => 'shoe lace',
  'a6' => 'shovel',
  'a2' => 'stop sign',
  'c5' => 'thermometer',
  'b1' => 'tyre swing',
  'b8' => 'tissue box',
  'b6' => 'tooth paste',
  'c4' => 'word search'
}

def get_item_from_bay(bay)
  BAYS[bay]
end

def get_bay_by_item(item)
  BAYS.each {|bay, bay_item| return bay if bay_item.downcase == item.downcase}
end