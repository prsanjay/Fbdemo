module ApplicationHelper
	def belongs_to_user?(post)
		current_user.id == post.user_id
	end
end
