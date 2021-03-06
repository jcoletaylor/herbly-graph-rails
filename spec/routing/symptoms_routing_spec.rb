# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SymptomsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/symptoms').to route_to('symptoms#index')
    end

    it 'routes to #show' do
      expect(get: '/symptoms/1').to route_to('symptoms#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/symptoms').to route_to('symptoms#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/symptoms/1').to route_to('symptoms#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/symptoms/1').to route_to('symptoms#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/symptoms/1').to route_to('symptoms#destroy', id: '1')
    end
  end
end
