### アプリケーション名
旨安居酒屋 角助
### アプリケーション概要
居酒屋のホームページ。予約や口コミ投稿ができることや、お店の情報を記載することで、より多くのお客さんに知ってもらう。
### URL
https://izakaya-kakusuke.herokuapp.com/
### テスト用アカウント
* Basic認証パスワード：0607
* Basic認証ID：techcamp
* スタッフNO.：a12345678
* 名前：ゆうき
* 一言：各助店長です☆
* メールアドレス：aaa@gmail.com
* パスワード：aaa000
### 利用方法
#### 予約
1.各ページのヘッダーのメニューボタンから予約フォームへ遷移する  
2.フルネーム、電話番号、人数、席指定、来店日時を入力し送信ボタンを押す  
3.予約完了ページの「TOPへ」ボタンを押すとトップページへ遷移する
#### 口コミ投稿
1.メニューボタンから口コミページへ遷移する  
2.評価、コメントを入力、任意で画像を挿入し送信ボタンを押す  
3.口コミ一覧から、ある口コミをクリックすると詳細ページへ遷移する
#### スタッフが口コミに対して返信
1.口コミの詳細から、お客さんの口コミに対して返信をする
### アプリケーションを作成した背景
友人が働いている居酒屋のホームページを作成したいと思っていた。大手予約サイトにお店の情報は載っているが、それだけでは魅力を伝えきれないという課題があった。そこで、宣伝・予約・口コミがそこで完結するホームページを作成すれば、よりそのお店を知ってもらえると考えた。
### 洗い出した要件
https://docs.google.com/spreadsheets/d/15wa0Jp7V0HaIx9fI_0V6GSjDKkRdXHaLqlW92e5bsBw/edit#gid=982722306
### 実装した機能についての画像やGIFおよびその説明

### 実装予定の機能
現在、ユーザー新規登録機能を実装中。
今後は口コミに対するスタッフの返信機能や、退社したスタッフの退会機能を実装予定。
また、予約のブッキングが起こらないようにするための機能を実装予定。
### データベース設計
[![Image from Gyazo](https://i.gyazo.com/7b08ee1a402e8264939b14be66b78bd0.png)](https://gyazo.com/7b08ee1a402e8264939b14be66b78bd0)
### 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/9bde033b6b1db963372a56096fc798fc.png)](https://gyazo.com/9bde033b6b1db963372a56096fc798fc)
### 開発環境
* フロントエンド
* バックエンド 
* インフラ
* テスト
* テキストエディタ

### ローカルでの動作方法
以下のコマンドを順に実行  
% git clone https://github.com/hirona96/izakaya-kakusuke  
% cd izakaya-kakusuke  
% bundle install  
% yarn install  

### 工夫したポイント
将来的に使えるように、友人にどんな機能を取り入れたら良いか実際に聞きました。予約機能や口コミ機能はあると嬉しいとのことだったため、優先的に実装しました。