### アプリケーション名
旨安居酒屋 角助
### アプリケーション概要
居酒屋のホームページ。予約や口コミ投稿ができることや、お店の情報を記載することで、より多くのお客さんに知ってもらう。
### URL
https://izakaya-kakusuke.herokuapp.com/
### テスト用アカウント
* Basic認証パスワード：0607
* Basic認証ID：techcamp
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
#### 予約
フルネーム（カナ）、電話番号、人数、席指定、来店日時を入力して予約する。
[![Image from Gyazo](https://i.gyazo.com/bcd418b144a7e540eff0038b4d764f00.gif)](https://gyazo.com/bcd418b144a7e540eff0038b4d764f00)
#### 口コミ投稿
評価、コメントを入力して口コミを投稿する。一覧を表示する。
[![Image from Gyazo](https://i.gyazo.com/613e635e57a83e603a0dba6debb430f0.png)](https://gyazo.com/613e635e57a83e603a0dba6debb430f0)
[![Image from Gyazo](https://i.gyazo.com/5d3a1c1e0b15ec670b475d7b48715c69.jpg)](https://gyazo.com/5d3a1c1e0b15ec670b475d7b48715c69)
#### 退会
退会をする前に、Ajaxを利用して確認をする
[![Image from Gyazo](https://i.gyazo.com/6c0012b048b1a56dfd3adb19ad108abf.jpg)](https://gyazo.com/6c0012b048b1a56dfd3adb19ad108abf)

### 実装予定の機能
* 予約情報のDB管理をより細かくできるようにすること  
ダブルブッキングを防ぐために、人数や席指定の項目が上限に達したら、予約フォームに遷移できなくなる仕組みを作りたい。また、不要になった予約情報を1日ごとに削除したいと考えている。

* 管理機能を設けること  
誰でも口コミを投稿できるため、不適切な投稿は削除できるようにしたい。また、現在トップページに表示されているスタッフ新規登録ボタンなどを管理者以外には見えないようにするなど、見た目にも配慮したサイトにしたい。
### データベース設計
[![Image from Gyazo](https://i.gyazo.com/e7748d55495c8da97bb0847ec4f1720d.png)](https://gyazo.com/e7748d55495c8da97bb0847ec4f1720d)
### 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/506a7a40ee9b08aabee9a0a1beb594c5.png)](https://gyazo.com/506a7a40ee9b08aabee9a0a1beb594c5)
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
* 友人へのヒアリング
将来的に使えるように、どんな機能を取り入れたら良いか実際に聞き、予約機能や口コミ機能を優先的に実装した。  

* enumを用いてのDBへの保存
予約フォームでform_withのラジオボタンを実装したかったため、それを用いて席指定に関する値を保存できるようにした。  

* 退会機能
退職したスタッフをスタッフ紹介ページに表示させないように、スタッフであれば誰でも退会ができるように実装した。