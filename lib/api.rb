class Api
attr_accessor :query
    def initialize(query)
    @query = query
        end

        def fetch_articles
    url = "http://newsapi.org/v2/everything?q=#{self.query}&from=2020-10-11&sortBy=publishedAt&apiKey=46feeecb06b54141808fb7d80f48571a"

    uri = URI(url)
    response = Net::HTTP.get(url)
    articles = JSON.parse(response)
            end
end
