class Advertisement < ActiveRecord::Base
  validates :price, inclusion: 0..500
end
