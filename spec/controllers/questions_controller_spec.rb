require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do
  
  let(:question){ FactoryGirl.create :question }

  it "should get index" do
  	get :index
    expect(assigns(:questions)).to eq([question])
  end

  it "should create a question" do
  	post :create, question: FactoryGirl.attributes_for(:question)
    expect(Question.count).to eq(1)
  end

end
