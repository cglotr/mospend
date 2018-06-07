# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  email: "faithess@email.com",
  password: "123123123",
  password_confirmation: "123123123"
)

currency_codes = %w[CAD MYR SGD USD]
currency_codes.each do |code|
  Currency.create!(code: code)
end

(2015..2018).each do |year|
  (1..12).each do |month|
    spending_month = user.spending_months.create!(month: month, year: year)

    (1..5).each do |x|
      spending_month.spendings.create!(cost: (x * 10), currency: Currency.first, item: "item #{x}")
      spending_month.spendings.create!(cost: (x * 10), currency: Currency.second, item: "item #{x}")
      spending_month.spendings.create!(cost: (x * 10), currency: Currency.third, item: "item #{x}")
    end
  end
end
