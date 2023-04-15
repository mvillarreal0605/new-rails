class Inquiry < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :interest, presence: true
  validates :email, presence: true

  enum interest: {
    recruiter: 0,
    project_request: 1,
    other: 2,
  }
end
