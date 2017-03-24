class Picture < ApplicationRecord
	belongs_to :attachable, :polymorphic => true
	has_attached_file :image, :styles => { :medium => "300>", :thumb => "200>" }
end
