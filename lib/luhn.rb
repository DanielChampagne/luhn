module Luhn
  def self.is_valid?(number)
#Step 1 - break the credit card into its individual digits.
#Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
#Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
#Step 4 - Sum the digits.
#Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
  end
end
Luhn.is_valid?(4194560385008504)