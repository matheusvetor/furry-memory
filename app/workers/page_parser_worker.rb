require 'open-uri'

class PageParserWorker
  include Sidekiq::Worker
  sidekiq_options retry: true

  def perform(id)
    page = Page.find(id)

    doc = Nokogiri::HTML(open(page.url))

    page.h1     = cleanup_content(doc.css('h1'))
    page.h2     = cleanup_content(doc.css('h2'))
    page.h3     = cleanup_content(doc.css('h3'))
    page.links  = doc.css('a').map { |link| link['href'] }
    page.parsed = true

    page.save
  end

  def cleanup_content(content)
    content.map { |item| item.text.strip }.reject(&:empty?)
  end
end
