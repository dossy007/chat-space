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
|name|string|null:false,index:true|

### Associasion
- belongs_to :group
- belongs_to :user

## groups table
|Clouumn|Type|Options|
|-------|----|-------|
|user_id|reference|foreign_key:true|
|message_id|reference|foreign_key:true|
|group_name|

## Associasion

## messages table

## Asociation

## users_groups_status table

## Asociation
