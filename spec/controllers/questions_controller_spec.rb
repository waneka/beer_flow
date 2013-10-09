require 'spec_helper'

describe QuestionsController do
  describe 'GET new' do
    it 'show a new question form' do
      get :new
    end
  end

  describe 'POST create' do
    let(:new_question) { FactoryGirl.build(:question) }
    it 'creates a new question' do
      post :create, :question => {title: new_question.title, body: new_question.body }
      expect(assigns(:question).title).to eq(new_question.title)
      expect(assigns(:question).body).to eq(new_question.body)
    end
  end

  describe 'GET show' do
    let(:new_question) { FactoryGirl.create(:question) }
    it 'shows individual question' do
      get :show, :id => new_question.id
      expect(assigns(:question)).to eq(new_question)
    end
  end
end