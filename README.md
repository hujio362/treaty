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

## Users 
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|email|string|null:false|
|encrypted_password|string|null:false|
|first_name|string|null:false|
|last_name|string|null:false|
|first_name_kana|string|null:false|
|last_name_kana|string|null:false|
|birthday|date|null:false|

### Association
has_many :posts
has_many :comments
has_many :circles
has_many :threads

## Posts
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|category_id|integer|null:false|
|key_word_id|integer|null:false|
|explanation|text|null:false|
|user|references|foreign_key: true|

### Association
belongs_to :user
has_many :comments

## Comments
|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
|user|references|foreign_key: true|
|post|references|foreign_key: true|

### Association
belongs_to :user
belongs_to :post

## Circles 
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|category_id|integer|null:false|
|key_word_id|integer|null:false|
|explanation|text|null:false|
|user|references|foreign_key: true|

### Association
has_many :users
has_many :thread

## Threads
|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
|user|references|foreign_key: true|
|circle|references|foreign_key: true|

### Association
belongs_to :circle
belongs_to :user
