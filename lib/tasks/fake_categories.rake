namespace :db do
  task faker_categories: :environment do
    puts "Create Category"
    Category.create!(
      name: "Danh muc"
    )
  end
end
