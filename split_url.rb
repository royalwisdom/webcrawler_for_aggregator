  
 tags_hash = { 'politics' => 1,'finance' => 2, 'world' => 3 } #to be filled out more
  
  Spidr.crawl('sketchy.content.com') do |spider|
    spider.every_page do |page|
    
      url = page.url
      title = page.search(headline)
      content = page.search(main-content)
      
      url.split('/').find { |dir| dir == "article" }
        #save the content with appropriate tag
        Article.new(tag: tags_hash['article']
      end
    end
  end
