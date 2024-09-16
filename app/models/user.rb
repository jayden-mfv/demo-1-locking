# frozen_string_literal: true

class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy

  validates :name, presence: true
end
