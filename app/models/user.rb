class User < ApplicationRecord
    has_one :tenant_profiles
    has_one :roomie_profiles
end
