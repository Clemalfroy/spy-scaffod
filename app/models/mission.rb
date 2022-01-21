class Mission < ApplicationRecord
  belongs_to :spy
  has_many :secrets
end
