# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :omniauthable

  has_one_attached :avatar
  has_person_name

  has_many :notifications, as: :recipient, dependent: :destroy
  has_many :services, dependent: :destroy
end
