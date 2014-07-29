require 'employee'

describe Employee do
	it 'observes a salary change' do
		manager = double :manager, update: true
		employee = Employee.new("Dave", "Writer", 35000)
		employee.add_observer(manager)
		employee.salary=(50000)
		expect(employee.changed).to be true
	end
end