# frozen_string_literal: true

class HerbProperty
  include ActiveGraph::Node
  property :property, type: String

  has_one :in_or_out_or_both, :herb, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :herb_property_type, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :precedence_type, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
