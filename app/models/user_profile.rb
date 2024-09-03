class UserProfile < ApplicationRecord
    belongs_to :user,
      class_name: "UserProfile",
      optional: true

      # DO NOT SUBMIT this doesn't need to be a UserProfile if we're just using the ID to get the full user right?
      # also maybe rename to friend_ids
    has_many :friends,
      class_name: "UserProfile"

    has_many :tasks

    validates :email, presence: true, format: { with: /.*@.*/, message: "this doesn't seem like a valid email" }
    validates :password, presence: true, length: { minimum: 8 }
end
