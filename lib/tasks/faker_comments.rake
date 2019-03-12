namespace :db do
  task faker_comments: :environment do
    puts "Create Comment"
    Comment.create!(
      content: "This is my comment",
      user_id: 1,
      product_id: 1
    )
    Comment.create!(
      content: "Replies comment 1",
      user_id: 1,
      product_id: 1,
      parent_id: 1
    )
    Comment.create!(
      content: "This is my comment 2",
      user_id: 1,
      product_id: 1
    )
    Comment.create!(
      content: "Replies comment 3",
      user_id: 1,
      product_id: 1,
      parent_id: 3
    )
  end
end
