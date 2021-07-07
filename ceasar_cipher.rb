def ceasar_cipher(string, shift)
    plain_letters = string.split('')
    cipher_letters = plain_letters.map do |letter|
        if letter =~ /[a-z]/
            ascii_value = letter.ord
            ascii_value -= 96
            ascii_value += shift
            ascii_value = ascii_value % 26
            ascii_value += 96
            ascii_value.chr
            
        elsif letter =~ /[A-z]/
            ascii_value = letter.ord
            ascii_value -= 64
            ascii_value += shift
            ascii_value = ascii_value % 26
            ascii_value += 64
            ascii_value.chr
        else
            letter
        end
    end
    cipher_letters.join('')
end

ceasar_cipher("What a string!", 5)