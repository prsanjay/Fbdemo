class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pictures, :as => :attachable
  has_many :posts
  has_many :comments

  accepts_nested_attributes_for :pictures
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter
  acts_as_follower
  acts_as_followable

  validates_presence_of :firstname,:lastname,:email,:password,:password_confirmation

  def name
  	return "#{self.firstname} #{self.lastname}"
  end
end
