# frozen_string_literal: true

class User
  include ActiveGraph::Node
  property :email, type: String
  property :encrypted_password, type: String
  property :reset_password_token, type: String
  property :reset_password_sent_at, type: DateTime
  property :remember_created_at, type: DateTime
end
