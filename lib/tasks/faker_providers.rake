namespace :db do
  task faker_providers: :environment do
    puts "Create Provider"
    Provider.create!(
      name: "Ten nha cung cap",
      address: "Ha Noi",
      phone: "0382305339",
      status: "con cung cap"
    )
  end
end
