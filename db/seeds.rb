# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# %w(db:drop db:create db:migrate).each do |task|
#   Rake::Task[task].invoke
# end

Rake::Task["db:faker_roles"].invoke
Rake::Task["db:faker_users"].invoke

Rake::Task["db:faker_regions"].invoke
Rake::Task["db:faker_categories"].invoke
Rake::Task["db:faker_providers"].invoke

Rake::Task["db:faker_products"].invoke
Rake::Task["db:faker_descriptions"].invoke

Rake::Task["db:faker_cetifications"].invoke
Rake::Task["db:faker_comments"].invoke
Rake::Task["db:faker_rates"].invoke

Rake::Task["db:faker_statisticals"].invoke
