class JobOpening < ApplicationRecord
    # Validations
    validates :title, presence: true
    validates :one_line_description, presence: true
    validates :employment_type, presence: true
    validates :location, presence: true
    validates :experience_level, presence: true
    validates :brief_description, presence: true
end
