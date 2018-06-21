class Cipher
   def initialize
      # array of standard alphabets
      normal_word = []
      for i in "a".."z"
         normal_word.push(i)
      end
      # array of reverse alphabets
      hidden_word = normal_word.reverse

      # get input to encode
      print "Enter your code word: "
      to_code = gets.chomp

      # split the input in an array of alphabets
      input_array = to_code.split("")

      # find the index of input in normal_word array
      i = 0
      index_array = []
      while i < input_array.length
         index_array << normal_word.find_index(input_array[i])
         i += 1
      end

      # use the index to find the alphabets from hidden_word array
      x = 0
      while x < index_array.length
         print hidden_word[index_array[x]]
         x += 1
      end
   end 
end

coding = true

# run the class Cipher
while coding == true
   Cipher.new
   coding = false
   exit
end