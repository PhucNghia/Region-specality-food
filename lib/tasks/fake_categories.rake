namespace :db do
  task faker_categories: :environment do
    puts "Create Category"
    Category.create!(name: "Bánh")
    Category.create!(name: "Đồ khô")
    Category.create!(name: "Hải sản")
    Category.create!(name: "Hoa quả")
  end
end
