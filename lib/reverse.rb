def reverse (input)

  symbol = { "I" => 1,
            "IV" => 4,
             "V" => 5,
             "IX"=> 9,
             "X" => 10,
             "XL"=> 40,
             "L" => 50,
             "XC"=> 90,
             "C" => 100,
             "CD"=> 400,
             "D" => 500,
             "CM"=> 900,
             "M" => 1000 }

  hash_index = Hash.new
  num = input.split("")
  empty = []
  location = 0
  total = 0


  num.each do |element|
    symbol.each do |key, value|
      if element == key
        empty << value
     end
    end
  end

  (empty.length-4).times do
    if empty[location] == empty[location+1]
        total += empty[location]
        location += 1
    elsif empty[location] > empty[location+1]
        number_check = num[location+1] + num[location+2]
        total += symbol[number_check]
        location += 2
    else
        total += (empty[location+1] - empty[location])
        location += 1
    end
  end

total


end
puts reverse("MMMCMXCIX")





