# SOUNDーGAMEーGEEK

## 概要

このアプリケーションは音楽ゲームを行っているユーザーが情報を共有しあうものです。

## URL,テスト用アカウント
URL: https://sound-game-geek.herokuapp.com/
テスト用アカウント
email: sato@gmail.com
password: 111aaa


## 利用方法
基本的には音楽ゲームに関しての記事をシェアしていくような内容になります。
ログイン機能があり、ログインを行うと、記事を投稿、編集、削除や記事の詳細を閲覧することができるようになります。

## 目指した課題解決
音楽ゲームには技術的に上手い人は上手い人で固まって、技術を共有しあうという風潮があるため、まだ上手でない人については上手い人からの技術を学ぶ機会が少ないと感じました。そこでこのアプリケーションを利用することによって、上手い人は自分のアウトプットや知名度の向上に役立てることができ、初心者は上手い人から技術を学ぶことができるという仕組みを作り、音楽ゲームのプレイヤーレベルの向上に繋がります。

## 実装した機能についての説明
- ログイン機能
新規登録、ログインをして記事を投稿、編集、削除など行えるようになります。
- 記事投稿機能
攻略記事の作成を行えます。
- マイページ
自分のプロフィールや自分の記事を閲覧、編集、削除を行うことができるページになります。
- 投稿者一覧ページ
投稿者一覧ページでは、自分の気になるユーザーがどんな記事を投稿しているのかを確認することができます。
- 記事一覧ページ
このページから自分の気になるタイトルの記事をみることができます。

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
