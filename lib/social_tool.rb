module SocialTool
  def self.twitter_search
    require 'open-uri'

    url = 'http://newsapi.org/v2/everything?'\
      'q=Apple&'\
      'from=2021-01-04&'\
      'sortBy=popularity&'\
      'apiKey=436d0a5ee58b45339f8844a6aad2d567'

    req = open(url)

    response_body = req.read

    puts response_body
  end
end
