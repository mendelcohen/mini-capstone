class Product < ApplicationRecord
  
  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..500}
  validates :price, presence: true, numericality: true 
  
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :product_categories

  def image
    Image.find_by(id: self.id)
  end

  def is_discounted?
    price < 10
  end 
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
