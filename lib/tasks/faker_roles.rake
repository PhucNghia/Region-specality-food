namespace :db do
  task faker_roles: :environment do
    puts "Create Role"
    Role.create!(name: "admin")
    Role.create!(name: "user")
  end
end
