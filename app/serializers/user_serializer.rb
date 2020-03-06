# frozen_string_literal: true

class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower

  attributes :email, :first_name, :last_name, :title, :bio
end
