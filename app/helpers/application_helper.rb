module ApplicationHelper
	def get_action(post)
		link_to '<i class="glyphicon glyphicon-eye-open"></i>'.html_safe, post
		link_to '<i class="glyphicon glyphicon-edit"></i>'.html_safe, edit_post_path(post)
		link_to '<i class="glyphicon glyphicon-log-out"></i>'.html_safe,  post, method: :delete, data: { confirm: 'Are you sure?' }
	end
end
