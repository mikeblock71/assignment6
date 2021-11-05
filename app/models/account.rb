class Account < ApplicationRecord
  belongs_to :user

  validate :valid_gender, :valid_age

  def valid_gender
    if gender != "male" && gender != "female" && gender != "N/A"
      errors.add(:gender, 'invalid input for gender')
    end
  end

  def valid_age
    if age < 20 || age > 100
      errors.add(:age, 'invalid input for age')
    end
  end

end