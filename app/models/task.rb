class Task < ActiveRecord::Base
	belongs_to :user

	auto_html_for :content do 
		html_escape
		image
		youtube(:width => "100%", :hright => 250, :autoplay => false)
		link :target => "_blank", :rel => "nofollow"
		simple_format
	end
end
