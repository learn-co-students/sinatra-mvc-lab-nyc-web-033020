class PigLatinizer

    def piglatinize(input)
        input.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(x)
        x.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            con = word.slice(0..vowel_index-1)
            remain_word= word.slice(vowel_index..word.length)
            remain_word + con + "ay"
        end
    end



end