module RadiantBasicPageAuthExtension
  module Page
    def self.included(base)
      base.instance_eval {
        attr_accessor_with_default :authenticated, false
        include InstanceMethods
      }
    end

    module InstanceMethods
      def protected?
        self.basic_auth_user && self.basic_auth_pass
      end

      def basic_auth_user
        user = self.basic_auth_field('User')

        if user && user.content.present?
          user.content
        end
      end

      def basic_auth_pass
        pass = self.basic_auth_field('Password')

        if pass && pass.content.present?
          pass.content
        end
      end

      def basic_auth_realm
        realm = self.basic_auth_field('Realm')

        if realm && realm.content.present?
          realm = realm.content

          if realm === 'true'
            realm = Radiant::Config['site.title']
          end

          realm
        else
          realm = self.slug
        end
      end

      def basic_auth_field(name)
        self.fields.detect { |f| f.name.downcase == name.to_s.downcase }
      end
    end
  end
end


