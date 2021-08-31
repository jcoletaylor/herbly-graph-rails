# frozen_string_literal: true

class HerbActionIndication
  include ActiveGraph::Node
  property :indication, type: String

  has_one :in_or_out_or_both, :herb_action, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
