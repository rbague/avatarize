# frozen_string_literal: true

RSpec.describe Avatarize do
  it 'has deafults' do
    expect(Avatarize::VERSION).not_to be nil
    expect(Avatarize.defaults).not_to be nil
    expect(Avatarize.defaults).to be_a Hash
  end
end
