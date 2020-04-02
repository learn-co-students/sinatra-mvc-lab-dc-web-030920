
class PigLatinizer

@@vowels = ["a","e","i","o", "u", "y"] 

def moving_con(word)
    if !@@vowels.include? word[0]#if the first letter of word is a con (! means the oppo)
        con = word[0]
        word = word[1..-1]+con  # -1 is the know the last letter 
        moving_con(word)
    else
        return word + "ay"
    end
end 
    

def piglatinize(string)
    #split the string into sep words
#if the first letter of the word is a vowel add way to the end
    #if the string start with constant move that letter to the end
    #repeat till the first letter is a vowel and add ay to the end of the string
#rejoin to one string
    array = string.split(" ")
    new_array = []
    array.each do  |word| 
        if @@vowels.include? (word[0].downcase)
        word = word + "way"
        new_array << word
        else 
            word = moving_con(word)
            new_array << word
            end 
        end
        string = new_array.join(" ")
        return string
    end

    




end