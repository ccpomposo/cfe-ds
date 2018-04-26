class Assignment < ApplicationRecord
  has_and_belongs_to_many :collaborator
  belongs_to :status
end
