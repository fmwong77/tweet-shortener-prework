# Write your code here.
def dictionary()
  hash = {
    hi: "hello",
    2: "to",
    2: "two",
    2: "too",
    4: "for",
    4: "four",
    b: "be",
    u: "you",
    @: "at",
    &: "and"
  }
end

def word_substituter(tweet)
  array = []
  array = tweet.split(" ")
  
  dictionary = {}
  dictionary = dictionary()
  i = 0
  
  while i < array.size
    if dictionary.key?(array[i].to_s)
      array[i] = dictionary[array[i].to_s]
    end
    i += 1
  end
  
  array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  for counter in 0..tweet_array.size-1 do
    puts word_substituter(tweet_array[counter])
  end
end