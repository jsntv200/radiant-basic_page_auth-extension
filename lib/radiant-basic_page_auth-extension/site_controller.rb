module RadiantBasicPageAuthExtension
  module SiteController
    def self.included(base)
      base.class_eval {
        include ClassMethods
        alias_method_chain :process_page, :basic_auth
      }
    end

    module ClassMethods
      private

      def process_page_with_basic_auth(page)
        if page.protected?
          if authenticate_with_http_basic { |u, p| u == page.basic_auth_user && p == page.basic_auth_pass }
            page.instance_eval do
              def cache?
                false
              end
            end

            page.authenticated = true
            process_page_without_basic_auth(page)
          else
            request_http_basic_authentication(page.basic_auth_realm)
          end
        else
          process_page_without_basic_auth(page)
        end
      end
    end
  end
end

