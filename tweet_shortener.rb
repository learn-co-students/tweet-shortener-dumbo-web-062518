def word_substituter(string)
  dictionary = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
  
  string_array = string.split(" ")
  string_array.collect do |word|
    dictionary.each do |key, value|
      if key.to_s == word.downcase
        word.replace value
      end
    end
  end
  string_array.join(" ")
end

# word_substituter(tweet)

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

# tweet = "Hey guys, can anyone teach me how to be cool? For I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

# tweet2 = "Hey guys, can anyone teach me how to be cool?"

# selective_tweet_shortener(tweet2)

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  else
    tweet
  end
end