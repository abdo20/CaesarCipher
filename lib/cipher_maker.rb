# the program will ask user to enter a text and key to cipher that text and retern the cipher text
alphabet='abdefghijklmnopqstuvwxyz'
capital_alphabet=alphabet.upcase
#
# function to start the program dailog with the user take the inputs from the user return the cipher text
  def start_program
      puts "enter the text:"
      text=gets.chomp
      puts "enter the key:"
      key=gets.chomp.to_i
      puts cipher text, key          #return the cipher text
  end


  #cipher function take a text and ket and return the cipher text
  def cipher txt, key
      cipher_text=''               #to store the new text
      txt.each_char do |char|
          cipher_text<<(transform_char char, key)         #transform the character and store it
      end
      return cipher_text
  end


  #the function take a character and key and transform the character
  def transform_char char, key
     # the program need to find the character index in the alphabet to change that index with the key
     char_index=alphabet.index(char) 
     capital_char_index=capital_alphabet.index(char)
     #check the character before the proccess
     if alphabet include? char
         #find the index of the new character will handled be the char_index function
         char=alphabet[new_char_index char_index, key]
     elsif capital_alphabet.include? char
         char=capital_alphabet[new_char_index capital_char_index, key]
     end
     char
  end



  #function take a index number and key and retun the cipher character index 
  def new_char_index index, key
      if index+key>alphabet.length             #to ensure that the index number will go back to a after reaching z
          new_index=index+key-alphabet.length
      else
          new_index=index+key
      end
      new_index
  end
