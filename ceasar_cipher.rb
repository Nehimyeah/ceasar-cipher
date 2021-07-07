def ceasar_cipher(string, shift)
    result = ''
    string.each_byte do |ascii_value|
        ascii_value <= 90 ? base = 64 : base = 96
        if ascii_value.between?(65, 90) || ascii_value.between?(97, 122)
            result << ((((ascii_value - base) + shift) % 26) + base).chr
        else
            result << ascii_value.chr
        end
    end
    result
end

ceasar_cipher("What a string!", 5)