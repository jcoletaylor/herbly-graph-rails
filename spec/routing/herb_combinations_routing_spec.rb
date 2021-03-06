# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HerbCombinationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/herb_combinations').to route_to('herb_combinations#index')
    end

    it 'routes to #show' do
      expect(get: '/herb_combinations/1').to route_to('herb_combinations#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/herb_combinations').to route_to('herb_combinations#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/herb_combinations/1').to route_to('herb_combinations#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/herb_combinations/1').to route_to('herb_combinations#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/herb_combinations/1').to route_to('herb_combinations#destroy', id: '1')
    end
  end
end
