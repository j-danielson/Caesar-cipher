

def caesar_cipher(text, shift)
    letter_values = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26} 
    new_array = text.split(//)
    new_array.map! do |letter|
        if letter == " "
            letter
        elsif letter == letter.upcase
            letter = letter.downcase
            letter = letter_values.fetch(letter) - shift
                if letter < 1 
                    letter = 26 + letter
                end
            letter = letter_values.key(letter).upcase
        else
            letter = letter_values.fetch(letter) - shift
                if letter < 1 
                    letter = 26 + letter
                end
            letter = letter_values.key(letter)
        end            
    end
    new_array.join
end