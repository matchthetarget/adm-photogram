require "rails_helper"

RSpec.describe Photo, type: :model do
  describe "Direct Associations" do
    it { should have_many(:comments) }

    it { should belong_to(:owner) }
  end

  describe "InDirect Associations" do
    it { should have_many(:followers) }
  end

  describe "Validations" do
    it { should validate_presence_of(:image) }

    it { should validate_uniqueness_of(:owner_id).scoped_to(:caption) }

    it { should validate_presence_of(:owner_id) }
  end
end
