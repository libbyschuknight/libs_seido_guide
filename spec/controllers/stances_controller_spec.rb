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

end
