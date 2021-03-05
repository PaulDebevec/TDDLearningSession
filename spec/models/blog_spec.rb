require 'rails_helper'

describe Blog, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
  end
end
