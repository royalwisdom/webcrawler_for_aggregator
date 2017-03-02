class User < ApplicationRecord

  def fetch_news
    Delayed::Job.enqueue CrawlingJob2
  end
end
