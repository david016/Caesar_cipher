def caesar_cipher(str, number)
  number_from_letters = (97..122).to_a
  number_from_upcase_letters=(65..90).to_a
  arr = str.chars.map{|letter| letter.ord}

  final =arr.map do |num|
    if number_from_letters.include?(num)
      index = number_from_letters.index(num) +number
      number_from_letters[index%26]
    elsif number_from_upcase_letters.include?(num)
      index = number_from_upcase_letters.index(num) +number
      number_from_upcase_letters[index%26]
    else
      num
    end
  end
  p final.map {|num| num.chr}.join
end

caesar_cipher("What a string!", 5)