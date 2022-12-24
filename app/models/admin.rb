class Admin < ApplicationRecord
    has_secure_password

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
     devise :database_authenticatable, :registerable,
     :recoverable, :rememberable, :validatable

    # Add the name attribute
    attr_accessor :name
end
