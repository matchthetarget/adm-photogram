require "rails_helper"

RSpec.describe Like, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:fan) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it { should validate_presence_of(:fan_id) }

    it {
      should validate_uniqueness_of(:photo_id).scoped_to(:fan_id).with_message("already liked")
    }

    it { should validate_presence_of(:photo_id) }
  end
end
