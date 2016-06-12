require 'rails_helper'

RSpec.describe Stance, type: :model do

  context "valid params" do

    let(:stance) { FactoryGirl.build(:stance) }

    # change all specs to this way? (figured out after doing invalid)
    it "stance is valid" do
      expect(stance).to be_valid
    end

    it "has a japanese name" do
      expect(stance.japanese_name).to eq("Kiba Dachi")
    end


    it "has an english name" do
      expect(stance.english_name).to eq("Straddle Stance")
    end

    it "has a description name" do
      expect(stance.description).to be_present
    end

    describe "image" do

      it { should have_attached_file(:image) }

      it { should validate_attachment_content_type(:image).
        allowing('image/png', 'image/gif').
        rejecting('text/plain', 'text/xml') }

      it { should validate_attachment_size(:image).
        less_than(1.megabytes) }

      xit "should be valid if no image is attached" do
        # FIX: at moment passes if have image as well
        stance = FactoryGirl.build(:stance, image: nil)
        expect(stance).to be_valid
      end

    end

  end

  context "invalid params" do

    it "is invalid without japanese name" do
      expect(FactoryGirl.build(:stance, japanese_name: nil)).to be_invalid
    end

    it "is invalid without englsih name" do
      expect(FactoryGirl.build(:stance, english_name: nil)).to be_invalid
    end

    it "is invalid without description name" do
      expect(FactoryGirl.build(:stance, description: nil)).to be_invalid
    end

  end

end
