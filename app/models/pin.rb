class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { maximum: 100, minimum: 5 }
  validates :user_id, presence: true

  belongs_to :user
end
