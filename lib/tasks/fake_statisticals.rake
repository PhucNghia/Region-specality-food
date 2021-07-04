namespace :db do
  task faker_statisticals: :environment do
    puts "Create Statisticals"
    statistical = Statistical.create!(quantity: 400)
    statistical.update_attributes created_at: 5.days.ago, updated_at: 5.days.ago
    statistical = Statistical.create!(quantity: 380)
    statistical.update_attributes created_at: 4.days.ago, updated_at: 4.days.ago
    statistical = Statistical.create!(quantity: 600)
    statistical.update_attributes created_at: 3.days.ago, updated_at: 3.days.ago
    statistical = Statistical.create!(quantity: 500)
    statistical.update_attributes created_at: 2.days.ago, updated_at: 2.days.ago
    statistical = Statistical.create!(quantity: 800)
    statistical.update_attributes created_at: 1.days.ago, updated_at: 1.days.ago
    statistical = Statistical.create!(quantity: 850)
  end
end
