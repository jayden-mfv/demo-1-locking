# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserProfiles::CreateService, type: :service do
  let(:user) { create(:user) }

  def run_threads(count, &block)
    ready_to_run = false

    threads = Array.new(count) do
      Thread.new do
        while !ready_to_run; end

        block.call
      end
    end

    ready_to_run = true
    threads.map(&:value)
  end

  it 'handles race conditions', truncation_only: true do
    expect do
      run_threads(5) do
        described_class.call!(user:)
      end
    end.to change { UserProfile.count }.by(1)
  end
end
