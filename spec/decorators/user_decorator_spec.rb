require 'spec_helper'

describe UserDecorator do
  let(:user) { described_class.new(build(:user, firstname: 'John', lastname: 'Doe')) }

  describe '#fullname' do
    it 'displays user fullname' do
      expect(user.fullname).to eq 'John Doe'
    end
  end
end