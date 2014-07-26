class Report
	attr_accessor :formatter
	attr_reader :title, :text

	def initialize(&formatter)
		@title = 'Monthly report'
		@text = ['This month we', 'lost a shitload of cash.']
		@formatter = formatter
	end

	def output_report
		@formatter.call(self)
	end

	HTML_FORMATTER = lambda do |context|
		puts '<html>'
		puts '  <head>'
		puts "    <title>#{context.title}</title>"
		puts '  </head>'
		puts '  <body>'
		context.text.each do |line|
			puts "    <p>#{line}</p>"
		end
		puts '  </body>'
		puts '</html>'
	end

	PLAIN_TEXT_FORMATTER = lambda do |context|
		puts "***** #{context.title} *****"
		context.text.each do |line|
			puts line
		end
	end

end