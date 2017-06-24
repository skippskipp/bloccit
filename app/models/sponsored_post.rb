class SponsoredPost < ActiveRecord::Base
  belongs_to :topic
  validates :price, inclusion: 0..500
end
