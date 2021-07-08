def caesar_cipher(str, number)
  numbers_from_letters = (97..122).to_a
  numbers_from_upcase_letters=(65..90).to_a

  numbers_from_input = str.chars.map{|letter| letter.ord}

  encrypted =numbers_from_input.map do |num|
    if numbers_from_letters.include?(num)
      index = numbers_from_letters.index(num) +number
      numbers_from_letters[index%26]
    elsif numbers_from_upcase_letters.include?(num)
      index = numbers_from_upcase_letters.index(num) +number
      numbers_from_upcase_letters[index%26]
    else
      num
    end
  end
  p encrypted.map {|num| num.chr}.join
end

caesar_cipher("What a string!", 5)