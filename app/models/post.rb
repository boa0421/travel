class Post < ApplicationRecord
  belongs_to :user
  
   mount_uploader :image, ImageUploader
  
  validates :title, presence: true, length: { maximum: 255 }
  validates :area, presence: true, length: { maximum: 50 }
  validates :country, presence: true, length: { maximum: 50 }
  validates :spot, presence: true, length: { maximum: 50 }
  validates :first_day, presence: true, length: { maximum: 50 }
  validates :last_day, presence: true, length: { maximum: 50 }
  # validates :image, presence: true, length: { maximum: 255 }
  validates :comment, presence: true, length: { maximum: 255 }
end
