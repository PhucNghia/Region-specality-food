namespace :db do
  task faker_roles: :environment do
    puts "Create Role"
    Role.create!(
      name: "admin"
    )
  end
end
