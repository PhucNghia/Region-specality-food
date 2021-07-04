namespace :db do
  task faker_cetifications: :environment do
    puts "Create Cetification"
    Cetification.create!(
      product_id: 1,
      image: "",
      description: "Chung chi",
      expired_at: "9/2021"
    )
  end
end
