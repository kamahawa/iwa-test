# README

IWA test 

## Installation
### Server Requirements
- Ruby >= 2.6.5p114
- Rails >= 6.0.0
- NodeJS >= 10.16.3
- Yarn >= 1.17.3

### Config connect to database
- In file `.env`, change information to connect Mysql

```
DATABASE_HOSTNAME=localhost
DATABASE_USERNAME=root
DATABASE_PASSWORD=
```

### Installing
Run a following command in the application root folder

```bash
# Install yarn
yarn install

# Install gem
bundle install

# Init database
rails db:create
rails db:migrate
rails db:seed

# Start rails
rails s
```

## APIs document
- Url: http://localhost:3000/api_docs
- Basic authentication: `admin/admin`