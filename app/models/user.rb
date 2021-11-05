class User < ApplicationRecord
	has_one :account
	has_many :todo_lists
end
