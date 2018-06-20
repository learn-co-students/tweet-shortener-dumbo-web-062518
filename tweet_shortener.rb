# Write your code here.

def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  new_tweet = []
  tweet.each do |word|
    dictionary.each do |x, y|
      if word.downcase == x
        word = y
      end
    end
    new_tweet << word
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? "#{tweet[0..136]}..." : tweet
end
