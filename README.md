# テーブル設計

## forms テーブル

| Column              | Type      | Options                   |
| ------------------- | --------- | ------------------------- |
| last_name_kana      | string    | null: false               |
| first_name_kana     | string    | null: false               |
| phone_number        | string    | null: false               |
| number_of_people    | string    | null: false               |
| seat                | integer   | null: false               |
| datetime            | datetime  | null: false               |

## comments テーブル

| Column              | Type      | Options     |
| ------------------- | --------- | ----------- |
| evaluation_id       | integer   | null: false |
| comment             | text      | null: false |
