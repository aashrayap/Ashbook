class Post < ApplicationRecord
  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type=> /\Aimage\/.*\Z/
  belongs_to :user
  has_many :comments
  accepts_nested_attributes_for :comments, :reject_if => :all_blank
end
