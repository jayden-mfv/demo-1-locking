# frozen_string_literal: true

class UserProfile < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true
  validates :code, presence: true, length: { is: 8 }, format: { with: /\A[a-zA-Z0-9]+\z/ }, uniqueness: true
end
