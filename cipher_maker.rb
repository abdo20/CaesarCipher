# the program will ask user to enter a text and key to cipher that text and retern the cipher text
#
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
     #check the character before the proccess
     if 'abcdefghijklmnopqrstuvwxyz'.include? char
         #find the index of the new character will handled be the char_index function
         char= 'abcdefghijklmnopqrstuvwxyz'[char_index 'abcdefghijklmnopqrstuvwxyz'.index(char), key]
     elsif 'abcdefghijklmnopqrstuvwxyz'.upcase.include? char
        char= 'abcdefghijklmnopqrstuvwxyz'.upcase[char_index 'abcdefghijklmnopqrstuvwxyz'.upcase.index(char), key]
     end
     char
  end



  #function take a index number and key and retun the cipher character index 
  def char_index index, key
      if index+key>'abcdefghijklmnopqrstuvwxyz'.length             #to ensure that the index number will go back to a after reaching z
          new_index=index+key-'abcdefghijklmnopqrstuvwxyz'.length
      else
          new_index=index+key
      end
      new_index
  end




   start_program
