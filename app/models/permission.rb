class Permission < ApplicationRecord
  belongs_to :assignment
  belongs_to :collaborator
end
