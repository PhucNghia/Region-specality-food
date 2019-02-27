namespace :db do
  task faker_rates: :environment do
    puts "Create Rate"
    Rate.create!(
      rate: 4,
      user_id: 1,
      product_id: 1
    )
  end
end
