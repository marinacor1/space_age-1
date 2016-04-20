require 'rails_helper'

RSpec.describe Package, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title, :price, :description, :image) }
    it { is_expected.to validate_uniqueness_of(:title, :description, :image) }
    it { should belong_to(:destination) }
  end
end
