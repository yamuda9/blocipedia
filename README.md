# Blocipedia

Wikis are a great way to collaborate on community-sourced content. Whether the wiki is for a hobby or work-related project, this app lets users create their own Markdown-based wikis and share them publicly or privately with other collaborators.

This app powers Blocipedia at http://calm-cliffs-68106.herokuapp.com/

## Getting Started

## Software requirements

- Rails 4.2.5

- Ruby 2.3.0

- PostgreSQL 9.3.x or higher

## Navigate to the Rails application

```
$ cd ~/bloc/blocipedia
```

## Set configuration files

```
$ cp config/database.yml.template config/database.yml
$ cp config/initializers/mail.rb.template config/initializers/mail.rb
```

## Create the database

```
$ pgstart
$ rake db:create
```

## Migrating and seeding the database

```
$ rake db:migrate
$ rake db:seed
```

## Starting the local server

```
$ rails server

    or

$ rails s
```

## Production Deployment

```
$ git push heroku master
$ heroku run rake db:migrate
```

## Support

Bug reports and feature requests can be filed with the rest for the Ruby on Rails project here:
* [File Bug Reports and Features](https://github.com/yamuda9/blocipedia/issues)

## License

Blocipedia is released under the *LICENSE-NAME* license.

## Copyright

copyright:: (c) Copyright 2016 Blocipedia. All Rights Reserved.
