class Product < ApplicationRecord
    resourcify
    belongs_to :user
    # belongs_to :category
    mount_uploader :images, ImageUploader
    has_many :likes
end


