class Party < ApplicationRecord

  # before_validation :party_type_validation

  # validates :party_type, inclusion: {in: %w( ORG PER), message: "Wrong party type, must be 'ORG' or 'PER'"}, allow_nil: false
  #
  # validates :party_type_validation
  #
  # validates :first_name, presence: true, if: :party_type_is_person?, message: "first_name field can't be blank"
  # validates :last_name, presence: true, if: :party_type_is_person?,
  #   message: "last_name field can't be blank"
  #
  #
  # private
  # def party_type_validation
  #   if party_type_is_organization?
  #     self.last_name = nil
  #     self.first_name = nil
  #   elsif party_type_is_person?
  #     self.name = nil
  #   else
  #     errors.add(:party_type, "Only 'ORG' or 'PER'")
  #   end

end
