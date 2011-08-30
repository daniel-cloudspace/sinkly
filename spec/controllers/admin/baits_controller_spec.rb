require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::BaitsController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Bait. As you add validations to Admin::Bait, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all admin_baits as @admin_baits" do
      bait = Admin::Bait.create! valid_attributes
      get :index
      assigns(:admin_baits).should eq([bait])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_bait as @admin_bait" do
      bait = Admin::Bait.create! valid_attributes
      get :show, :id => bait.id.to_s
      assigns(:admin_bait).should eq(bait)
    end
  end

  describe "GET new" do
    it "assigns a new admin_bait as @admin_bait" do
      get :new
      assigns(:admin_bait).should be_a_new(Admin::Bait)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_bait as @admin_bait" do
      bait = Admin::Bait.create! valid_attributes
      get :edit, :id => bait.id.to_s
      assigns(:admin_bait).should eq(bait)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Bait" do
        expect {
          post :create, :admin_bait => valid_attributes
        }.to change(Admin::Bait, :count).by(1)
      end

      it "assigns a newly created admin_bait as @admin_bait" do
        post :create, :admin_bait => valid_attributes
        assigns(:admin_bait).should be_a(Admin::Bait)
        assigns(:admin_bait).should be_persisted
      end

      it "redirects to the created admin_bait" do
        post :create, :admin_bait => valid_attributes
        response.should redirect_to(Admin::Bait.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_bait as @admin_bait" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Bait.any_instance.stub(:save).and_return(false)
        post :create, :admin_bait => {}
        assigns(:admin_bait).should be_a_new(Admin::Bait)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Bait.any_instance.stub(:save).and_return(false)
        post :create, :admin_bait => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_bait" do
        bait = Admin::Bait.create! valid_attributes
        # Assuming there are no other admin_baits in the database, this
        # specifies that the Admin::Bait created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::Bait.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => bait.id, :admin_bait => {'these' => 'params'}
      end

      it "assigns the requested admin_bait as @admin_bait" do
        bait = Admin::Bait.create! valid_attributes
        put :update, :id => bait.id, :admin_bait => valid_attributes
        assigns(:admin_bait).should eq(bait)
      end

      it "redirects to the admin_bait" do
        bait = Admin::Bait.create! valid_attributes
        put :update, :id => bait.id, :admin_bait => valid_attributes
        response.should redirect_to(bait)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_bait as @admin_bait" do
        bait = Admin::Bait.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Bait.any_instance.stub(:save).and_return(false)
        put :update, :id => bait.id.to_s, :admin_bait => {}
        assigns(:admin_bait).should eq(bait)
      end

      it "re-renders the 'edit' template" do
        bait = Admin::Bait.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Bait.any_instance.stub(:save).and_return(false)
        put :update, :id => bait.id.to_s, :admin_bait => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_bait" do
      bait = Admin::Bait.create! valid_attributes
      expect {
        delete :destroy, :id => bait.id.to_s
      }.to change(Admin::Bait, :count).by(-1)
    end

    it "redirects to the admin_baits list" do
      bait = Admin::Bait.create! valid_attributes
      delete :destroy, :id => bait.id.to_s
      response.should redirect_to(admin_baits_url)
    end
  end

end
