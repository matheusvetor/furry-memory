class PageSerializer < ActiveModel::Serializer
  # cache key: 'page'
  attributes :id, :url, :h1, :h2, :h3, :links, :created_at, :updated_at
end
