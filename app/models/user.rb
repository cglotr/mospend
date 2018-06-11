# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :spending_months

  validates :created_at, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :updated_at, presence: true
end
