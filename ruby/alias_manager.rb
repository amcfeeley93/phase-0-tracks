def next_vowel (vowel)
  vowels = "aeiou "

  if vowel == " "
    vowel = " "
  elsif vowel == "u"
    vowel = "a"
  elsif vowel == "U"
    vowel = "A"
if character has index value
 index + 1
  elsif vowels.upcase.index(vowel) != nil
    vowel = vowels.upcase[vowels.upcase.index(vowel) + 1]
  else vowel = vowels[vowels.index(vowel) + 1]
  end
end
