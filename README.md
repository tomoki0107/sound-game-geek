# テーブル設計

## users テーブル

| Column             | Type    | Options                   | 
| ------------------ | ------- | ------------------------- | 
| nickname           | string  | null: false               | 
| email              | string  | null: false, unique: true | 
| encrypted_password | string  | null: false               | 
| profile            | string  | null: false               | 
| profile_image_id   | integer |                           |

### Association

- has_many :articles

## articles テーブル

| Column      | Type       | Options                        | 
| ----------- | ---------- | ------------------------------ | 
| title       | string     | null: false                    | 
| text        | text       | null: false                    | 
| category_id | integer    | null: false                    | 
| user_id     | references | null: false, foreign_key: true | 

### Association

- belongs_to :user
