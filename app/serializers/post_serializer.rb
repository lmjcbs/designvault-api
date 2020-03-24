# frozen_string_literal: true

class PostSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  
  set_key_transform :camel_lower

  attributes :id, :content
end
