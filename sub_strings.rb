def substrings(string, dictionary)
  result = Hash.new(0)
  dictionary.each do |word|
    matches = string.downcase.scan(word)
    result[word] += matches.length if matches.any?
  end
  p result
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
