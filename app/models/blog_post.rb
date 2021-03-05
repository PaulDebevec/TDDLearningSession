class BlogPost < ApplicationRecord
  validates_presence_of :post_body

  belongs_to :blog
end
