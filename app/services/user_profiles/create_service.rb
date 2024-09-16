# frozen_string_literal: true

module UserProfiles
  class CreateService
    def self.call!(...)
      new(...).call!
    end

    # @param [User] user
    def initialize(user:)
      @user = user
    end

    def call!
      Retryable.retryable(tries: 5, on: [ActiveRecord::RecordNotUnique]) do
        ActiveRecord::Base.transaction do
          # with_advisory_lock do
          create_user_profile!
          # end
        end
      end
    end

    private

    attr_reader :user

    def with_advisory_lock(&block)
      ApplicationRecord.with_advisory_lock_result(advisory_lock_key, &block)
    end

    def advisory_lock_key
      "create_user_profile_for_user_#{user.id}"
    end

    def create_user_profile!
      user_profile = UserProfile.find_or_initialize_by(user:)
      user_profile.code ||= SecureRandom.alphanumeric(8)
      user_profile.save!
    end
  end
end
