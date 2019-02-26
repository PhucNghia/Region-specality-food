namespace :db do
  task faker_comments: :environment do
    puts "Create Comment"
    Comment.create!(
      content: "Commented",
      user_id: 1,
      product_id: 1
    )
  end
end
