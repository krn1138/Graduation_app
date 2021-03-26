# JPhouse.com(仮)

# 概要
**海外旅行をした際の宿泊先で日本人宿を探す際に、**
**ネットで検索をかけなくてもアプリが位置情報を特定して日本人宿を探してくれる。**
**海外旅行に行く人全般むけのアプリだが、どちらかというとバックパッカー向け**

日本人宿：「世界各地に点在している、日本人が経営する安宿」のことで
バックパッカーがよく利用するゲストハウスのような場所。
わからないことがあれば誰かに質問することがいつでもでき、旅の仲間ができやすいことも魅力。

# コンセプト
訪れた国の日本人宿を簡単に見つけることができる

# バージョン情報
* Ruby 2.6.5
* Rails 5.2.4
* Postgresql 13.1

# 機能一覧(優先度’高’のみ実装)
* ユーザー登録（画像含む）	
* ログイン、ログアウト機能	
* ゲストログイン	
* 位置情報特定機能	
* 宿検索機能	
* 宿先詳細ページ	
* 宿予約管理画面CRUD機能	
* コミュニティー画面	
* コメント機能	
* いいね機能	
* 泊まった宿のレビュー	
* 個人情報登録	
* 過去に泊まったところ一覧	
* 管理者機能	
* 宿登録（宿主用のログイン機能）	
* 決済機能	
* スマホ対応	
* メッセージ機能	
* 予約完了後、予約者へ確定メール	
* 本人確認メール	

# カタログ設計
https://docs.google.com/spreadsheets/d/1Tc0FE-ffoBvK5L20tNceU-WdeQINK9RC0-crG0NmXUs/edit?usp=sharing

# テーブル設計
ER図：https://cacoo.com/diagrams/n6fyPFohq5aakEym/9E725

テーブル：https://docs.google.com/spreadsheets/d/1Tc0FE-ffoBvK5L20tNceU-WdeQINK9RC0-crG0NmXUs/edit?usp=sharing

# 画面遷移図
https://drive.google.com/file/d/1yR6hU4f5owGPaUjgQ6YOoEE12zoBrxgX/view?usp=sharing

# 画面ワイヤーフレーム
https://cacoo.com/diagrams/n6fyPFohq5aakEym/F59BB

# 使用予定Gem/技術
* devise
* gem devise-i18n
* ransac
* rails admin
* cancancan
* dotenv-rails
* gon
* geocoder
* GoogleAPI
* bootstrap4
* active storage  or  carrier wave
* メッセージ機能
* AWS
* Payjp
* jpmobile
* OAuth
* letter_opener_web or sendgrid

# 課題要件

就業Termから２つ以上の技術
* メッセージ機能
* device

カリキュラム外から１つ以上の技術
* GoogleAPI
* ransac