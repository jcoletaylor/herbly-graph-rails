# frozen_string_literal: true

class Herb
  include ActiveGraph::Node
  property :name, type: String
  property :pinyin, type: String
  property :hanzi, type: String
  property :latin, type: String
  property :pharm_latin, type: String
  property :common_english, type: String

  has_one :in_or_out_or_both, :herb_category, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
