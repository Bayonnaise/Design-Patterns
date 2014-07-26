require 'report'
require 'HTMLReport'
require 'PlainTextReport'

describe Report do
	it 'prints an html form' do
		report = HTMLReport.new
		expect(report).to receive(:puts).with('<html>')
		expect(report).to receive(:puts).with('  <head>')
		expect(report).to receive(:puts).with('    <title>Monthly report</title>')
		expect(report).to receive(:puts).with('  </head>')
		expect(report).to receive(:puts).with('  <body>')
		expect(report).to receive(:puts).with('    <p>This month we</p>')
		expect(report).to receive(:puts).with('    <p>lost a shitload of cash.</p>')
		expect(report).to receive(:puts).with('  </body>')
		expect(report).to receive(:puts).with('</html>')
		report.generate_report
	end

	it 'prints a plain text form' do
		report = PlainTextReport.new
		expect(report).to receive(:puts).with('***** Monthly report *****')
		expect(report).to receive(:puts).with('This month we')
		expect(report).to receive(:puts).with('lost a shitload of cash.')
		report.generate_report
	end


end