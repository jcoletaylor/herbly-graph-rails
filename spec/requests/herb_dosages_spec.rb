# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/herb_dosages', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # HerbDosage. As you add validations to HerbDosage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # HerbDosagesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      HerbDosage.create! valid_attributes
      get herb_dosages_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      herb_dosage = HerbDosage.create! valid_attributes
      get herb_dosage_url(herb_dosage), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new HerbDosage' do
        expect do
          post herb_dosages_url,
               params: { herb_dosage: valid_attributes }, headers: valid_headers, as: :json
        end.to change(HerbDosage, :count).by(1)
      end

      it 'renders a JSON response with the new herb_dosage' do
        post herb_dosages_url, params: { herb_dosage: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new HerbDosage' do
        expect do
          post herb_dosages_url,
               params: { herb_dosage: invalid_attributes }, as: :json
        end.to change(HerbDosage, :count).by(0)
      end

      it 'renders a JSON response with errors for the new herb_dosage' do
        post herb_dosages_url, params: { herb_dosage: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested herb_dosage' do
        herb_dosage = HerbDosage.create! valid_attributes
        patch herb_dosage_url(herb_dosage), params: { herb_dosage: new_attributes }, headers: valid_headers, as: :json
        herb_dosage.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the herb_dosage' do
        herb_dosage = HerbDosage.create! valid_attributes
        patch herb_dosage_url(herb_dosage), params: { herb_dosage: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the herb_dosage' do
        herb_dosage = HerbDosage.create! valid_attributes
        patch herb_dosage_url(herb_dosage),
              params: { herb_dosage: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested herb_dosage' do
      herb_dosage = HerbDosage.create! valid_attributes
      expect do
        delete herb_dosage_url(herb_dosage), headers: valid_headers, as: :json
      end.to change(HerbDosage, :count).by(-1)
    end
  end
end