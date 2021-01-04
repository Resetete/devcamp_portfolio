module SocialTool
  def self.twitter_search
    newsapi = News.new(ENV.fetch(news_api_key))
    all_articles = newsapi.get_everything(q: 'bitcoin',
                                          sources: 'bbc-news,the-verge',
                                          domains: 'bbc.co.uk,techcrunch.com',
                                          from: '2019-12-01',
                                          to: '2020-01-31',
                                          language: 'en',
                                          sortBy: 'relevancy',
                                          page: 2))
  end
end
