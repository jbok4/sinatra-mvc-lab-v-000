class PigLatinizer


  def piglatinize(word)
   
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(word[0])
      word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif word[0..1] == "qu" 
      word[2..-1]+ "quay"
    elsif word[0..2] == "squ"
       word[3..-1]+ "squay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0..0] + "ay"
    elsif word.length <= 1
      word + "way"
    else
      word # return unchanged
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end



   

end