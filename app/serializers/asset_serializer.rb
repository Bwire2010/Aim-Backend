class AssetSerializer < ActiveModel::Serializer
  attributes :id, :price, :name,  :category_id, :description, :quantity, :status ,:image_url, :location, :released_year
  # has_many :requests
  # belongs_to :category
  # has_many :users, through: :requests
end
