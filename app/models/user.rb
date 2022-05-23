# Implicit Attr
# email: string
# password_digest: string
#
# has_secure_password gives us the following
# Virtual Attr
# password: string
# password_confirmation: string

class User < ApplicationRecord
    has_secure_password
end
