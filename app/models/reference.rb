class Reference < ActiveRecord::Base
  attr_accessible :category, :link

  validates :category, :link, presence: true

  belongs_to :category
end
