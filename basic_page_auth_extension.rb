require 'radiant-basic_page_auth-extension'
require 'radiant-basic_page_auth-extension/page'
require 'radiant-basic_page_auth-extension/site_controller'

class BasicPageAuthExtension < Radiant::Extension
  version     RadiantBasicPageAuthExtension::VERSION
  description RadiantBasicPageAuthExtension::DESCRIPTION
  url         RadiantBasicPageAuthExtension::URL

  def activate
    Page.send :include, RadiantBasicPageAuthExtension::Page
    SiteController.send :include, RadiantBasicPageAuthExtension::SiteController
  end
end
