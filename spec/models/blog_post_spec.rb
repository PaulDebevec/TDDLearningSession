require 'rails_helper'

describe BlogPost, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:post_body)}
  end

  describe "relationships" do
    it {should belong_to(:blog)}
  end
end
