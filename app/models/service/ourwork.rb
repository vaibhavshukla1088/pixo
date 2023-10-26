class Service::Ourwork < ApplicationRecord

    has_one_attached :ourworkimg1
    has_one_attached :ourworkimg2
    has_one_attached :ourworkimg3

    validates :heading1, :description1, :heading2, :description2, :heading3, :description3, :heading4, :description4,
    presence: :true
end
