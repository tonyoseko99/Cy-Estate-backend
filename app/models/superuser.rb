class Superuser < ApplicationRecord
    # Add any additional attributes that you want to include for the superuser, such as role or permissions
    attr_accessor :role

    # Enable password authentication for the superuser
    has_secure_password
end
