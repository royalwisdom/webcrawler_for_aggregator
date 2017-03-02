class CrawlWorker3 #< Struct.new(:websites)   

def perform(*args)
  tags_hash = { 'politics' => 1,'finance' => 2, 'world' => 3 } #to be filled out more
  headline = "h1.headline"
  main_content = "span#main-content"
  website = "www.reuters.com"

    Spidr.crawl(website) do |spider|
      spider.every_page do |page|

        url = page.url
          split_url = url.to_s.split('/')
        title = page.search(headline)
        content = page.search(main_content)

        tags_hash.each do |key, value|
          if split_url.find { |dir| dir == value }
            article = Article.new(url: url, title: title, content: content, tag: value)
            article.save!
          end
        end

      end
    end
end
end
