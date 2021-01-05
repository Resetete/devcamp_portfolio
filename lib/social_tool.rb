module SocialTool
  def self.news_search(query)
    newsapi = News.new(ENV.fetch('NEWS_API_KEY'))
    all_articles = newsapi.get_everything(q: query,
                                          #sources: 'bbc-news,the-verge',
                                          #domains: 'bbc.co.uk,techcrunch.com',
                                          from: (DateTime.now - 20.days).strftime('%Y-%m-%d'),
                                          to: DateTime.now.strftime('%Y-%m-%d'),
                                          language: 'en',
                                          sortBy: 'relevancy',
                                          page: 2)
    all_articles.take(6).collect do |news_article|
      news_info = news_article.name + news_article.url 
    end
  end
end
