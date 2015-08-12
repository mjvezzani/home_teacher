require 'rails_helper'

describe HomeTeachersController do
  let(:ht1) { HomeTeacher.create(firstname: "Mike", lastname: "Vezzani") }
  let(:ht2) { HomeTeacher.create(firstname: "John", lastname: "Tanner") }
  let(:ht3) { HomeTeacher.create(firstname: "Chris", lastname: "Klomp") }
  let(:htnew) { HomeTeacher.new(firstname: "Mike", lastname: "Vezzani") }
  let(:htinvalid) { HomeTeacher.new(firstname: nil, lastname: "Vezzani") }

  describe "GET #index" do
    it "sets @home_teachers to contain all instances of HomeTeacher" do
      ht1.save
      ht2.save
      ht3.save

      get :index
      expect(assigns(:home_teachers).length).to eq 3
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "sets @home_teacher to the correct instance of HomeTeacher" do
      get :show, id: ht1
      expect(assigns(:ht1).full_name).to eq "Mike Vezzani"
    end

    it "renders the show template" do
      get :show, id: ht1
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    it "assigns a new HomeTeacher to @home_teacher" do
      get :new
      expect(assigns(:home_teacher)).to be_a_new(HomeTeacher)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    let(:home_teacher) { HomeTeacher.create(firstname: "Mike", lastname: "Vezzani") }

    it "assigns @home_teacher with the correct instance of HomeTeacher" do
      get :edit, id: home_teacher
      expect(assigns(:home_teacher).full_name).to eq "Mike Vezzani"
    end

    it "renders the correct template" do
      get :edit, id: home_teacher
      expect(response).to render_template :edit
    end
  end

  describe "POST #create" do
    let(:home_teacher) { HomeTeacher.new(firstname: "Mike", lastname: "Vezzani") }

    context "with valid attributes" do
      it "creates a new instance of HomeTeacher" do
        post :create, home_teacher: home_teacher.attributes
        expect(HomeTeacher.count).to eq 1
      end

      it "redirects to the #index action" do
        post :create, home_teacher: home_teacher.attributes
        expect(response).to redirect_to home_teachers_path
      end
    end

    context "with invalid attributes" do
      let(:home_teacher) { HomeTeacher.new(firstname: nil, lastname: "Vezzani") }

      it "does not create a new instance of HomeTeacher" do
        post :create, home_teacher: home_teacher.attributes
        expect(HomeTeacher.count).to eq 0
      end

      it "renders the #new action" do
        post :create, home_teacher: home_teacher.attributes    
        expect(response).to render_template :new
      end
    end
  end

  describe "PATCH #update" do

  end

  describe "DELETE #destroy" do

  end
end
