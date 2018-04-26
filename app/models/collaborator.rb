class Collaborator < ApplicationRecord
  has_and_belongs_to_many :collaborator
  belongs_to :job
  belongs_to :department
end
