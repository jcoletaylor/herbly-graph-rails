# frozen_string_literal: true

class Symptom
  include ActiveGraph::Node
  property :name, type: String
end
