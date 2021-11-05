class TodoItem < ApplicationRecord
  belongs_to :TodoList
  has_and_belongs_to_many :Tags

  default_scope { order due_date: :asc}

end
