# frozen_string_literal: true

FactoryBot.define do
  factory :user_profile do
    user
    code { SecureRandom.alphanumeric(8) }
  end
end
