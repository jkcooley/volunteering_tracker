class Task < ApplicationRecord
  belongs_to :org_profile

  validates :title, presence: true
end
