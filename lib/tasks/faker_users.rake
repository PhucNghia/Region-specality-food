namespace :db do
  task faker_users: :environment do
    puts "Create User"
    User.create!(
      email: "admin@gmail.com",
      name: FFaker::NameVN.name,
      password: "123456",
      username: "admin",
      birthday: "23/08/1997",
      gender: 1,
      phone: "0382305339",
      address: "Tuyên Quang",
      role_id: 1
    )
  end
end
