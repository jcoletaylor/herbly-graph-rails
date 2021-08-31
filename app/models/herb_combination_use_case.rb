# frozen_string_literal: true

class HerbCombinationUseCase
  include ActiveGraph::Node
  property :use_case, type: String

  has_one :in_or_out_or_both, :herb_combination, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
