vm = [[[{:name=>"Vanilla Cookies", :price=>3}, {:name=>"Pistachio Cookies", :price=>3}, {:name=>"Chocolate Cookies", :price=>3}, {:name=>"Chocolate Chip Cookies", :price=>3}], [{:name=>"Tooth-Melters", :price=>12}, {:name=>"Tooth-Destroyers", :price=>12}, {:name=>"Enamel Eaters", :price=>12}, {:name=>"Dentist's Nightmare", :price=>20}], [{:name=>"Gummy Sour Apple", :price=>3}, {:name=>"Gummy Apple", :price=>5}, {:name=>"Gummy Moldy Apple", :price=>1}]], [[{:name=>"Grape Drink", :price=>1}, {:name=>"Orange Drink", :price=>1}, {:name=>"Pineapple Drink", :price=>1}], [{:name=>"Mints", :price=>13}, {:name=>"Curiously Toxic Mints", :price=>1000}, {:name=>"US Mints", :price=>99}]]]


row_index = 0 
while row_index < vm.length do 
  puts "Row #{row_index} has #{vm[row_index]} columns"
  
  column_index = 0 
  while column_index< vm[row_index].length do
    
    coord = "#{row_index}, #{column_index}"
    inner_len = vm[row_index][column_index].length
    
    # Remember \t is a TAB character for indentation
    puts "\tCoordinate [#{coord}] points to an #{vm[row_index][column_index].class} of length #{inner_len}"
 
    inner_index = 0
    
    while inner_index < inner_len do
      puts "\t\t (#{coord}, #{inner_len}) is: #{vm[row_index][column_index][inner_index]}"
      inner_index += 1
    end
    
    column_index += 1 
  end 
  
def get_grand_total
  row_index += 1
  
  grand_total = 0
  row_index = 0
  while row_index < vm.length do
    column_index = 0
    while column_index < vm[row_index].length do
      inner_len = vm[row_index][column_index].length
      inner_index = 0
      while inner_index < inner_len do
        # Explanation!
        # vm[row][column][spinner]
        # spinner is full of Hashes with keys :price and :name
        grand_total += vm[row_index][column_index][inner_index][:price]
        inner_index += 1
      end
      column_index += 1
    end
    row_index += 1
  end
  grand_total
end