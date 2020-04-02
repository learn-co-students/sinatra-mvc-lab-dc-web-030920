require 'pry'
class PigLatinizer

    attr_reader :words

    def initialize
        @words = words
    end

    def piglatinize(words)
        vowels = %w(a e i o u)
        words.split(" ").map do |word|
            ending =[]
            holder = []
            i = 0
            while !vowels.include?(word[i].downcase)
                ending << word[i]
                i+=1
            end
            holder << word[i, word.length]
            !vowels.include?(word[0].downcase) ? ending << "ay" : ending << "way"
            holder.join + ending.join
        end.join(" ")
    end
end
