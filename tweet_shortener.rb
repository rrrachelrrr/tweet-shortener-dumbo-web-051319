#require 'pry'

def dictionary
  {
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
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ")
  new_tweet.map do |word|
    dictionary.map do |key, value|
      if word.downcase == key.to_s
        word.replace(value)
      else
      word
      end
    end
  end
    new_tweet.join(" ")
  end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      return new_tweet[0..139]
    else
      return new_tweet
    end
  end

end
