Employee.destroy_all
Office.destroy_all

5.times do |i|
  employee = Employee.create!(
    name: Faker::Name.name
  )
  Office.create!(
    employee: employee,
    number: (200 + i + 1).to_s
  )
end

