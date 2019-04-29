namespace :db do
  task faker_users: :environment do
    puts "Create User"
    User.create!(
      email: "admin@gmail.com",
      name: "Ngọc Nghĩa", #FFaker::NameVN.name,
      password: "ngocnghia97",
      username: "admin",
      birthday: "23/08/1997",
      gender: 1,
      phone: "0382305339",
      address: "Tuyên Quang",
      role_id: 1
    )

    gender = 0
    10.times do |n|
      gender = n < 5 ? 1 : 0
      User.create!(
        email: FFaker::Internet.email,
        name: FFaker::NameVN.name,
        password: "ngocnghia97",
        username: "username-#{n+1}",
        birthday: "23/08/1997",
        gender: gender,
        phone: "0382305339",
        address: "Tuyên Quang",
        role_id: 2
      )
    end
  end
end
