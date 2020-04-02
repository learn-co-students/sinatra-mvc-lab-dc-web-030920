class PigLatinizer 


    def piglatinize(words)
        #if string begins with a (a,e,i,o,u) add way to the end of the string
        #else remove the letters of the string before the first vowel, add it to the end of the string + "ay"
        # string.split /([aeiou].*)/
        divided_words = words.split(" ")
        new_sentence = divided_words.collect do |word|
            if word.start_with?("a","A","e","E","i","I","o","O","u","U")
                word + "way"
            else
                array = word.split /([aeiou].*)/
                a=array[0]
                b=array[1]
                result= b + a + "ay"
                result
            end
        end.join(" ")
        new_sentence
    end

    
end


