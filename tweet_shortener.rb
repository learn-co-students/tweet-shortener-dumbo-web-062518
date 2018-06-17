require 'pry'
# Write your code here.

def dictionary
  {"hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, index|
    dictionary.each do |og_word, abr|
      if word.upcase == og_word.upcase
        tweet_array[index] = abr
      end
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |a_tweet|
    puts word_substituter(a_tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    "#{selective_tweet_shortener(tweet)[0..135]}+..."
  else
    selective_tweet_shortener(tweet)
  end
end
