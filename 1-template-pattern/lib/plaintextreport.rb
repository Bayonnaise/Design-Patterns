class PlainTextReport < Report
	def output_title(title)
		puts "***** #{@title} *****"
	end

	def output_line line
		puts line
	end
end