def encrypt(a)
  len = a.length

  index = 0

  while index < len
    if a[index] == "z"
      a = a + "a"
    elsif a[index] == " "
      a = a + " "
    else a = a + a[index].next
    end

    index += 1
  end

  i = len - 1

  while i >= 0
    a[i] = ""
    i -= 1
  end

p a
end


def decrypt(d)
  len = d.length

  index = 0

  decrypted_code = ""

  alpha = "abcdefghijklmnopqrstuvwxyz"

  while index < len
    if d[index] == "!"
      decrypted_code[index] = " "
    elsif d[index] == "0" || d[index] == "1" || d[index] == "2" || d[index] == "3" || d[index] == "4" || d[index] == "5" || d[index] == "6" || d[index] == "7" || d[index] == "8" || d[index] == "9"
      i = "0123456789".index(d[index])
      decrypted_code = decrypted_code + "0123456789"[i-1]
    elsif d[index] == d[index].upcase
      e = d[index]
      f = alpha.upcase.index(e)
      decrypted_code = decrypted_code + alpha.upcase[f - 1]
    else
      e = d[index]
      f = alpha.index(e)
      decrypted_code = decrypted_code + alpha[f - 1]
    end
    index += 1

  end

p decrypted_code
end

puts "Would you like to encrypt or decrypt your password? (e/d)"
input = gets.chomp

puts "What's your password?"

password = gets.chomp

case input

when "e"
  encrypt(password)
when "d"
  decrypt(password)
end