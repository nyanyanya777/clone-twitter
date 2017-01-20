class Record < ActiveRecord::Base
  validates :content, length: { maximum: 255 }
  validates :content, presence: true
end
