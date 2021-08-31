# frozen_string_literal: true

class Formula
  include ActiveGraph::Node
  property :name, type: String
  property :pinyin, type: String
  property :hanzi, type: String
  property :english, type: String
  property :common_english, type: String
end
