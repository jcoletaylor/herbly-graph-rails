# frozen_string_literal: true

class HerbWarning
  include ActiveGraph::Node
  property :warning, type: String

  has_one :in_or_out_or_both, :herb, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :herb_warning_type, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
