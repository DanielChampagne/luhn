module Luhn
  def self.is_valid?(number)
    number = number.to_s
#Step 1 - break the credit card into its individual digits. 
    digits = number.split("").map{|num|num.to_i}
#Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
    doubled = digits.reverse.map.with_index{|num, index| index.even? ? num * 2 : num}
#Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
    greater = doubled.map{|num| num > 9 ? num - 9 : num}
#Step 4 - Sum the digits.
    sum = greater.inject(0, :+)
#Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
    if sum % 10 == 0 
      puts "true"
    else
      puts "false"
    end
    
  end
end
Luhn.is_valid?(4194560385008504)