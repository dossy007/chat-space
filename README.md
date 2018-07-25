# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users table

|Cloumn|Type|Options|
|-------|----|-------|
|name|string|index: true, null: false|

### Associasion
- has_many :members_status
- has_many :messages
- has_many :groups, through: :members_status

## groups table
|Cloumn|Type|Options|
|-------|----|-------|
|name|string|null: false, unique: true|

## Associasion
- has_many :members_status
- has_many :messages
- has_many :users, through: :members_status

## messages table
|Cloumn|Type|Options|
|-------|----|-------|
|text|text|	|
|image|string|	|
|user_id|reference|foreign_key:true|
|group_id|reference|foreign_key:true|
## Asociation
- belongs_to :user
- belongs_to :group

## members_status table
|Cloumn|Type|Options|
|-------|----|-------|
|group_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|
## Asociation
- belongs_to :user
- belongs_to :group
