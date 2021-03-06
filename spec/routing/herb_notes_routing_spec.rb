# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HerbNotesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/herb_notes').to route_to('herb_notes#index')
    end

    it 'routes to #show' do
      expect(get: '/herb_notes/1').to route_to('herb_notes#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/herb_notes').to route_to('herb_notes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/herb_notes/1').to route_to('herb_notes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/herb_notes/1').to route_to('herb_notes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/herb_notes/1').to route_to('herb_notes#destroy', id: '1')
    end
  end
end
