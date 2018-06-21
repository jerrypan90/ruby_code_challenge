def pig_latin(default, word)
   # convert user input to an array
   word_array = word.split("")

   # find the index of first vowel
   first_common_index = word_array.index {|i| default.include?(i)}

   # the array portion after the vowel index
   first_part = word_array.slice(first_common_index, word_array.length)

   # the array portion before the vowel index
   second_part = word_array.slice(0, first_common_index)

   # the addition "ay" to be added at the end
   new_word_array = first_part + second_part + ["ay"]

   # concat all the array portions into a string
   pig_latin_word = new_word_array.join

   # output pig_latin word
   print pig_latin_word
end

# default list to be check against with
vowel = ["a", "e", "i", "o", "u"]

# asking for user input
print "Enter your English word: "
input = gets.chomp

# calling the pig_latin function
puts pig_latin(vowel, input)