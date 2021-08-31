# frozen_string_literal: true

class HerbPropertyType
  include ActiveGraph::Node
  property :name, type: String
  property :description, type: String
end
