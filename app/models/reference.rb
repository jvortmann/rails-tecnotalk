class Reference < ActiveRecord::Base
  attr_accessible :category_id, :link

  validates :category, :link, presence: true

  belongs_to :category
end
