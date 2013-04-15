class Client < ActiveRecord::Base
  validates :name, :surname, :street, :city, length: { minimum: 2 }
  validates :email, format: { with: /\A.+@.+\z/ }
  validates :phone, format: { with: /\A\d{3}-\d{3}-\d{3}\z/ }
  validates :postcode, format: { with: /\A\d{2}-\d{3}\z/ }
  validates :street, :city, presence: true

  def to_s
    "#{name} #{surname} (#{id})"
  end
end
