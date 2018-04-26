class Comment < ApplicationRecord
  belongs_to :assignment
  belongs_to :collaborator
end
