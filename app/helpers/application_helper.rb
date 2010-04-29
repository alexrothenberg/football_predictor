# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def title the_title
		"<title>#{the_title}</title>"
	end
end
