class Post < ApplicationRecord
  belongs_to :user
  has_many :pictures, :as => :attachable
  accepts_nested_attributes_for :pictures
  has_many :comments
end
