namespace :db do
  task faker_users: :environment do
    puts "Create User"
    User.create!(
      email: "admin@gmail.com",
      name: "Đỗ Thị Nhàn", #FFaker::NameVN.name,
      password: "nhanxinh",
      username: "admin",
      birthday: "04/12/1999",
      gender: 0,
      phone: "0382305339",
      address: "Tây Ninh",
      role_id: 1
    )

    gender = 0
    10.times do |n|
      gender = n < 5 ? 1 : 0
      User.create!(
        email: FFaker::Internet.email,
        name: FFaker::NameVN.name,
        password: "123456",
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
