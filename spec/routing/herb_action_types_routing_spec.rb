# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HerbActionTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/herb_action_types').to route_to('herb_action_types#index')
    end

    it 'routes to #show' do
      expect(get: '/herb_action_types/1').to route_to('herb_action_types#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/herb_action_types').to route_to('herb_action_types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/herb_action_types/1').to route_to('herb_action_types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/herb_action_types/1').to route_to('herb_action_types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/herb_action_types/1').to route_to('herb_action_types#destroy', id: '1')
    end
  end
end
