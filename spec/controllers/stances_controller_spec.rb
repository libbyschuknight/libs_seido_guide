require 'rails_helper'

RSpec.describe StancesController, type: :controller do

  describe "#new" do
    before do
      get :new
    end

    it "returns a new stance page" do
      expect(response). to render_template(:new)
    end

    it "assignes an instance of Stance to @stance" do
      expect(assigns(:stance)).to be_an_instance_of(Stance)
    end
  end

  describe "#create" do
    context "when valid parameters" do
      before do
        @valid_params = FactoryGirl.attributes_for(:stance)
        post :create, { :stance => @valid_params }
        @stance = Stance.find_by(@valid_params)
      end

      it "a new stance is created" do
        expect(@stance).to be_truthy
      end

      it "redirects to show stance details" do
        expect(response).to redirect_to(stance_path(@stance))
      end
    end

    context "if invalid parameters" do
      before do
        @invalid_parameters = FactoryGirl.attributes_for(
          :stance,
          japanese_name: "",
          english_name: ""
        )
        post :create, { :stance => @invalid_parameters }
        @stance = Stance.find_by(@invalid_parameters)
      end

      it "a new stance is not created" do
        expect(@stance).to be_falsey
      end

      it "redirects to the new stance page" do
        expect(response).to redirect_to(new_stance_path)
      end
    end
  end

  describe "#show" do
    before do
      @stance = FactoryGirl.create(:stance)
    end

    it "finds a stance" do
      get :show, id: @stance.id

      expect(assigns(:stance).id).to eq(@stance.id)
    end

    it "stance has correct japanese_name" do
      get :show, id: @stance.id

      expect(@stance.japanese_name).to eq("Kiba Dachi")
    end

    it "stance has correct english_name" do
      get :show, id: @stance.id

      expect(@stance.english_name).to eq("Straddle Stance")
    end

    context "when stance doesn't exist" do
      before { get :show, id: @stance.id - 1 }

      it "redirects to home page" do
        expect(response).to redirect_to(root_path)
      end

      it "sets an error message in flash" do
        expect(flash[:error]).to_not be_nil
      end
    end
  end

end
