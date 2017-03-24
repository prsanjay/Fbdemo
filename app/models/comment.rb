class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true
  belongs_to :user

  default_scope -> { order('created_at DESC') }
  acts_as_commentable
  

  validates_presence_of :comment
  validates_presence_of :commentable
  validates_presence_of :user
end
