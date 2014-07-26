require 'report'

describe Report do
	it 'prints an html form' do
		report = Report.new do |context|
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
		expect(STDOUT).to receive(:puts).with('<html>')
		expect(STDOUT).to receive(:puts).with('  <head>')
		expect(STDOUT).to receive(:puts).with('    <title>Monthly report</title>')
		expect(STDOUT).to receive(:puts).with('  </head>')
		expect(STDOUT).to receive(:puts).with('  <body>')
		expect(STDOUT).to receive(:puts).with('    <p>This month we</p>')
		expect(STDOUT).to receive(:puts).with('    <p>lost a shitload of cash.</p>')
		expect(STDOUT).to receive(:puts).with('  </body>')
		expect(STDOUT).to receive(:puts).with('</html>')
		report.output_report
	end

	it 'prints a plain text form' do
		report = Report.new do |context|
			puts "***** #{context.title} *****"
			context.text.each do |line|
				puts line
			end
		end
		expect(STDOUT).to receive(:puts).with('***** Monthly report *****')
		expect(STDOUT).to receive(:puts).with('This month we')
		expect(STDOUT).to receive(:puts).with('lost a shitload of cash.')
		report.output_report
	end
end
