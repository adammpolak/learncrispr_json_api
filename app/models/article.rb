class Article < ApplicationRecord
  validates :title, :description, :abstract, :article_url, presence: true
end
