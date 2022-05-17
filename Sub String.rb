dictionary =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (text, dictionary)
    result = Hash.new(0)
    random_words = text.downcase
    dictionary.each do |word|
        matches = random_words.scan(word).length
        result[word] = matches unless matches == 0
    end

    return result 

end
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
