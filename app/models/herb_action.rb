# frozen_string_literal: true

class HerbAction
  include ActiveGraph::Node

  has_one :in_or_out_or_both, :herb, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :herb_action_type, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
