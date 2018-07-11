 module OmniauthAttributesConcern
      extend ActiveSupport::Concern
      module ClassMethods
        def facebook params
      (params['info']['email'] = "dummy#{SecureRandom.hex(10)}@dummy.com") if params['info']['email'].blank?
      attributes = {
        provider: params['provider'],
        uid: params['uid'],
                      email: params['info']['email'],
                      password: Devise.friendly_token
                  }
      create(attributes)
  end
        def twitter params
      (params['info']['email'] = "dummy#{SecureRandom.hex(10)}@dummy.com") if params['info']['email'].blank?
      attributes = {
        provider: params['provider'],
        uid: params['uid'],
                      email: params['info']['email'],
                      password: Devise.friendly_token
                  }
      create(attributes)
  end
        def gplus params
      (params['info']['email'] = "dummy#{SecureRandom.hex(10)}@dummy.com") if params['info']['email'].blank?
      attributes = {
        provider: params['provider'],
        uid: params['uid'],
                      email: params['info']['email'],
                      password: Devise.friendly_token
                  }
      create(attributes)
  end
        def linkedin params
      (params['info']['email'] = "dummy#{SecureRandom.hex(10)}@dummy.com") if params['info']['email'].blank?
      attributes = {
        provider: params['provider'],
        uid: params['uid'],
                      email: params['info']['email'],
                      password: Devise.friendly_token
                  }
      create(attributes)
  end
      end
 end
 
