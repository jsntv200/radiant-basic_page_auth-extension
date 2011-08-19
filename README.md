# Basic Page Auth

Protect page content with HTTP Basic Authentication. The user, password, and realm are set up by adding the following Fields to a page:

User (required)
Password (required)
Realm (optional)

Realm defaults to the page slug. If set to "true" it will use Radiant::Config['site.title'], otherwise set your own value.


## TODO

- Write some tests


## Installation

This has only been tested on Radiant v1.0.0.rc2 +

Add the gem to your Gemfile :

```
gem "radiant-basic_page_auth-extension", "~> 1.0.2"
```

Update your bundle :

```
$ bundle install
```
