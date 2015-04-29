module ApplicationHelper
	def panel_color(val)
		val ? 'success' : 'danger'
	end

	def message(val)
		val ? "You Got It Correctly!" : "Sorry! Try Again."
	end
	
end
