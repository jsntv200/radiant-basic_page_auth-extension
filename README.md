# Basic Page Auth

Protect a page's contents with HTTP Basic Authentication. The user, password, and realm are set up by adding the following Fields to a page:

User (required)
Password (required)
Realm (optional)

Realm defaults to the page slug. If set to "true" it will use Radiant::Config['site.title'], otherwise set your own value.


## TODO

- Write some tests


## Installation

This has only been tested on Radiant v1.0.0.rc2 +

Install as a gem :

```
gem install radiant-basic_page_auth-extension
```

Include the gem in your environment.rb :

```
config.gem 'radiant-basic_page_auth-extension', :version => '~> 1.0.0'
```

Run the update task :

```
rake radiant:extensions:filter_toolbars:update
```
