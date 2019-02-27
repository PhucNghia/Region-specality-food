namespace :db do
  task faker_regions: :environment do
    puts "Create Region"
    Region.create!(name: "Miền Bắc")
    Region.create!(name: "Miền Trung")
    Region.create!(name: "Miền Nam")
  end
end