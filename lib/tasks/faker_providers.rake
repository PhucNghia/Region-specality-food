namespace :db do
  task faker_providers: :environment do
    puts "Create Provider"
    Provider.create!(
      name: "Nhà cung cấp 1",
      address: "Hà Nội",
      phone: "0382305339",
      status: "Còn cung cấp"
    )
    Provider.create!(
      name: "Nhà cung cấp 2",
      address: "Bắc Giang",
      phone: "0382305339",
      status: "Còn cung cấp"
    )
    Provider.create!(
      name: "Nhà cung cấp 3",
      address: "Tuyên Quang",
      phone: "0382305339",
      status: "Còn cung cấp"
    )
  end
end
