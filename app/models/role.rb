class Role < ApplicationRecord
  has_many :users
  enum name: {admin: "admin", user: "user"}
end
