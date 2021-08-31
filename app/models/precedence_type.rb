# frozen_string_literal: true

class PrecedenceType
  include ActiveGraph::Node
  property :name, type: String
  property :description, type: String
end
