# テーブル設計

## user テーブル

| Column       | Type   | Options     |
| -------------| ------ | ----------- |
| name         | string | null: not   |
| email        | string | null: not   |
| password     | string | null: not   |
| profile      | text   | null: not   |
| occupation   | text   | null: not   |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## prototypesテーブル

| Column     | Type   | Options     |
| -----------| ------ | ----------- |
| title      | string | null: not   |
| catch_copy | text   | null: not   |
| concept    | text   | null: not   |
| user       | references

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## commentsテーブル

| Column    | Type        | Options     |
| --------- | ----------- | ----------- |
| test      | string      | null: not   |
| user      | references  |
| prototype | references

### Association

- belongs_to :room
- belongs_to :user