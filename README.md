# README

# Description

Rails sample app using Atlas mongo database server.

# Instructions

- You will need your Atlas cluster. Create and account here https://cloud.mongodb.com
- Add a new cluster following instructions https://youtu.be/SIiVjgEDI7M
- You will need also ruby and rails
- Install mongo shell https://docs.mongodb.com/manual/tutorial/

# Configuration

Generate mongoid.yml
> $ rails g mongoid:config

```
production:
  # Configure available database clients. (required)
  clients:
    # Defines the default client. (required)
    default:
      # Defines the name of the default database that Mongoid can connect to.
      # (required).
      database: 'myDatabaseName'

      # Provides the hosts the default client can connect to. Must be an array
      # of host:port pairs. (required)
      hosts:
        - mycluster0-shard-00-00-wpeiv.mongodb.net:27017
        - mycluster0-shard-00-01-wpeiv.mongodb.net:27017
        - mycluster0-shard-00-02-wpeiv.mongodb.net:27017
      options:
        # The name of the user for authentication.
        user: kay

        # The password of the user for authentication.
        password: myRealPassword

        # The database or source to authenticate the user against. If the database
        # specified above is not admin, admin MUST be specified here.
        auth_source: admin

        # All Atlas servers use SSL. (default: false)
        ssl: true
```

# Get started

 Install dependencies:
 > $ bundle install
 
 Run server:
 > $ rails s
 
 and go to http://localhost:3000
