print "data preparing.."

100.times do |i|
  some_data = 500.times.map do
    {
      name: Faker::Alphanumeric.alphanumeric(number: 16),
      display_name: Faker::Alphanumeric.alphanumeric(number: 32),
      short_description: Faker::Alphanumeric.alphanumeric(number: 88),
      is_hidden: rand(10).zero?,
      kind_cd: rand(-1..2),
      category_id: rand(10000),
      price: rand(0.1..999.99).round(2),
      description: Faker::Alphanumeric.alphanumeric(number: 512),
      comment: Faker::Alphanumeric.alphanumeric(number: 512),
      details: {
        color: Faker::Color.rgb_color,
        color_name: Faker::Color.color_name,
        size: rand(0.1..999.99).round(2),
        ext_type: Faker::Alphanumeric.alphanumeric(number: 32),
        mode: Faker::Alphanumeric.alphanumeric(number: 12),
        mark: Faker::Alphanumeric.alphanumeric(number: 32),
      }
    }
  end
  SomeThing.insert_all(some_data)
  print '.'
end
puts "\ndata has been prepared"