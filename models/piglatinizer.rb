require 'pry'
class Piglatinizer
    # if word starts with consonant add all consonants until vowel +"-ay" at the end i.e. flatiron would be atironflay
    #
    # else add "-way" add the end if begins with vowel

    #     "noodle soup" becomes "oodlenay oupsay"
    #     "flatiron school" becomes "atironflay oolschay"
    #     "big apple" becomes "igbay appleway" (note the added "w" in "appleway")
    attr_reader :words

    def initialize
        @words = words
    end

    # checks if the first letter of each word is consonants 
    def consonat_checker(words)
      
        # "flat iron"
        # change the words in to an arry of words
        # words = "Flat iron"
        # expecting "atFlay ironway"
        splited_words = words.split(" ")
        # vowels = ["a", "e","i","o"]
        sentence = []
        splited_words.each do |word|
        # .map do |word|
            changed_word = []
            beginning =[]
            i = 0
            while i < word.length do
                if word[i].downcase != "a" && word[i].downcase != "e" && word[i].downcase != "i" && word[i].downcase != "o" && word[i].downcase != "u"
                    
                    changed_word << word[i] 
                else
                    break
                end
                i += 1
            end
            
            beginning << word[i, word.length]
            if word[0].downcase != "a" && word[0].downcase != "e" && word[0].downcase != "i" && word[0].downcase != "o" && word[0].downcase != "u"

                latinized = beginning.join + changed_word.join + "ay"  
                sentence << latinized   
            else
            latinized = beginning.join + changed_word.join + "way"  
            sentence << latinized
            end
        end   
        sentence.join(" ")
    end

end











# if word2 = "Flatiron School"
# def pigtest(words)
#     vowels = %w(a e i o u)
#     words.split(" ").map do |word|
#         ending = []
#         rest_of_word = []
#           i = 0
#           while !vowels.include?(word[i].downcase)
#               ending << word[i]
#               i += 1
#           end
#             # get rest of word...
#           rest_of_word << word[i, word.length]
#           !vowels.include?(word[0].downcase) ? ending << "ay" : ending << "way"
#           rest_of_word.join + ending.join
#     end.join(" ")
# end
