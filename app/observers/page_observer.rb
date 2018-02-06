class PageObserver < ActiveRecord::Observer
  def after_create(page)
    PageParserWorker.perform_in(5.seconds, page.id)
  end
end
