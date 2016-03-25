require 'rails_helper'

RSpec.describe StancesController, type: :controller do

  describe "#new" do
    before do
      get :new
    end

    it "should return a new stance page" do
      expect(response). to render_template(:new)
    end

    

  end

end
