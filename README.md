# アプリケーション名	
temiyage

# アプリケーション概要	
百貨店や駅中で売っているお菓子の商品比較、口コミ投稿が出来るサービス。
地元の手土産に関して情報が共有できるサービス。

# URL
https://temiyage.herokuapp.com/tops

# テスト用アカウント	
ログイン機能等を実装した場合は、ログインに必要な情報を記載。

# 利用方法	
## 商品閲覧・いいね
1. トップページのヘッダーからユーザーの新規登録を行う
2. マイページの商品を見るボタン、もしくはヘッダーのPicupボタンから商品一覧を見る
3. 表示された商品をクリックすると詳細ページに移る為、気に入った記事があればページ上部にあるハートマーク（いいね）をクリックする
4. ヘッダーのHomeボタンを押しマイページに戻ると、ページ下の方に先程いいねした投稿が一覧として表示される

## 商品記事を投稿する（投稿権限を持つ者のみ）
1. マイページのお問い合わせはこちらからボタン、もしくはヘッダーのContactボタンからお問い合わせページに移動する
2. 氏名とお問い合わせ項目を入力し、本人確認書類のファイルを選択したのち送信するボタンを押す
3. ユーザー登録時に登録したメールアドレス宛に自動返信のメールが届いたのを確認し、管理者からの返信を待つ
4. 管理者から返信が来たのち、マイページにログインすると新規投稿はこちらからボタンが追加されているためそちらをクリックする
5. 全ての情報を入力し投稿するボタンを押すと商品記事の投稿が出来る

## 商品記事を編集・削除する（投稿権限を持つ者のみ）
1. 自身が投稿した商品記事の詳細ページ下にある編集ボタンを押すと編集ページに移る為、変更したい部分は書き換え変更するボタンを押す
2. 何も変更がない場合は戻るボタンを押せば詳細ページに戻る
3. 記事を削除したい場合は、詳細ページ下にある削除ボタンを押す

## ローカル記事を投稿する（全ユーザー）
1. マイページの丸いボタン、もしくはヘッダーのlocalボタンからローカルページに移動する
2. 投稿はこちらからボタンをクリックし投稿ページへ移動する。
3. 全ての情報を入力し投稿するボタンを押すと記事の投稿が出来る

## ローカル記事の閲覧
1. マイページの丸いボタン、もしくはヘッダーのlocalボタンからローカルページに移動する
2. ページ下部に表示される日本地図から気になる地域をクリックする。
3. 選択した地域に関する記事の一覧が表示される為、気になる投稿をクリックすると詳細を見る事が出来る。

# アプリケーションを作成した背景	
当アプリケーションは2つの立場から考えて開発するに至った。

１つ目は消費者側の立場である。
私が洋菓子メーカーに勤めていた際、他社の商品研究をするにおいて情報収集に非常に苦戦した。
まとめサイトには話題の商品しか載っておらず、企業HPには当たり前だがその企業の商品しか載っていないため他社商品との比較が出来ない、楽天やAmazonを例とする通販サイトで商品比較は可能だが、配送を基本としているため記載されていない商品も多かった。
以上の経験から消費者側からしてみても、ひとつのサイトで様々な企業の商品比較ができるようなサービスがあったら良いなと思った。

２つ目は企業側の立場である。
私の働いていた洋菓子店は百貨店のインスタグラムで新商品の告知をしていたのだが、館のSNSでは食品だけでなく衣類やイベント情報なども扱うため、どうしてもPRが埋もれてしまいがちだった。
また、小さな会社などは自社HPを作成及び運営するのが難しいうえ、作っても名が通っていないと中々見つけて貰えないという課題を抱えているように感じた。

以上を踏まえて、消費者側の「様々な企業の商品比較をひとつのサイトで完結させたい」、企業側の「商品PRの場を増やしたい」といった双方の課題を解決するべく当アプリケーションを開発することにした。

# 洗い出した要件	
https://docs.google.com/spreadsheets/d/1K7auzkzqmgC6U4hb507OWcHREuf4qq9CoMg3jlpAuKk/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
1. コメント投稿時に星付きの5段階評価を付けられるようにした
[![Image from Gyazo](https://i.gyazo.com/7b7748a34aab83dbd1d01c57687a8cc5.gif)](https://gyazo.com/7b7748a34aab83dbd1d01c57687a8cc5)  
2. 投稿にいいねを付けられるようにし、いいね数を表示した他、いいねした投稿に関してはマイページに一覧として表示されるようにした
[![Image from Gyazo](https://i.gyazo.com/27250dc77d665ac00ae6ba803d9bd768.gif)](https://gyazo.com/27250dc77d665ac00ae6ba803d9bd768)
3. 日本地図を用意しクリックした地域に絞って投稿が表示されるようにした
[![Image from Gyazo](https://i.gyazo.com/a90dce94f261453393842e8eb864e59f.gif)](https://gyazo.com/a90dce94f261453393842e8eb864e59f)
4. インフォメーションページと詳細ページにおいて、スライド形式で画像が表示されるようにした
[![Image from Gyazo](https://i.gyazo.com/58000e91b04c2bc8912ab6fa8cc26a47.gif)](https://gyazo.com/58000e91b04c2bc8912ab6fa8cc26a47)
[![Image from Gyazo](https://i.gyazo.com/7acf1f4b27760aac6c9c61777aab2e74.gif)](https://gyazo.com/7acf1f4b27760aac6c9c61777aab2e74)
5. 記事投稿時に画像を複数枚選択できるようにし、選択した画像のプレビューも表示されるようにした
[![Image from Gyazo](https://i.gyazo.com/699ca4666c16877092c811c53efeccbe.gif)](https://gyazo.com/699ca4666c16877092c811c53efeccbe)
6. ActionMailerを用いたお問い合わせ機能の実装
[![Image from Gyazo](https://i.gyazo.com/1902758fbcefd9822fcf3b018adc7fc6.gif)](https://gyazo.com/1902758fbcefd9822fcf3b018adc7fc6)

# 実装予定の機能	
1. 検索機能の充実化<br>
商品を様々な視点から比較出来るように、キーワードだけでなく商品の特徴や価格帯での検索を可能とする。
2. ランキングの表示<br>
アンケート結果やいいね数でのランキングを表示する

 # データベース設計
[![Image from Gyazo](https://i.gyazo.com/3b28524fd01bfaf8c08c83f03b5d894e.png)](https://gyazo.com/3b28524fd01bfaf8c08c83f03b5d894e)

 # 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ec5a76a137b2fc1a03eb28ea34973438.png)](https://gyazo.com/ec5a76a137b2fc1a03eb28ea34973438)

# 開発環境	
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code

# ローカルでの動作方法
※	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。

# 工夫したポイント
1. 会員登録時にアンケートを取り、その結果を企業側にグラフとして提供した点。 <br>
ユーザー情報を提供することで、企業側もよりユーザーの背景や想いに沿ったコンテンツが作れるのではないかと考えグラフを取り入れた。
2. ビューの色合い<br>
お菓子と言ったら可愛い印象だが、男性が仕事で使うことも考えるとあまり甘い雰囲気には出来ないと思った。
「長時間パソコンや携帯の画面を見ていると目が疲れてきてしまう」といった事も考慮し、色合いを薄い暖色系でまとめてみた。
3. 投稿権限を企業様にのみ付与した点<br>
当初は一般ユーザーも記事投稿が出来るようなサービスを考えていたが、品質が落ちてしまうことが懸念されたため投稿権限を企業側のみと絞る事にした。しかし、ユーザー参加型コンテンツでないとサービスとしての面白みが欠けてしまうため、口コミ機能や地域に関する情報発信機能をつける事で補った。


# 各テーブル情報
# usersテーブル
|column                 |  type |  Options                 |
|-----------------------|-------|--------------------------|
|nickname               |string |null: false               |
|email                  |string |null: false, unique: true |
|encrypted_password     |string |null: false               |
|gender                 |integer|null: false               |
|situation              |integer|null: false               |
|children               |integer|null: false               |
|age_id                 |integer|null: false               |
|job_id                 |integer|null: false               |
|area_id                |integer|null: false               |
|think_id               |integer|null: false               |
|admin                  |boolean|default: false            |

## association
has_many :comments
has_many :tweets
has_many :favorites
has_many :contacts
has_many :locals


# tweetsテーブル
|column           |  type      |  Options                      |
|-----------------|------------|-------------------------------|
|shop_name        |string      |null: false                    |
|item_name        |string      |null: false                    |
|information      |text        |null: false                    |
|category_id      |integer     |null: false                    |
|area             |string      |null: false                    |
|capacity         |string      |null: false                    |
|expiry           |string      |null: false                    |
|keep             |string      |null: false                    |
|allergy          |string      |null: false                    |
|quantity         |string      |null: false                    |
|price            |string      |null: false                    |
|url              |string      |                               |
|event_id         |integer     |                               |
|user             |references  |null: false, foreign_key: true |

## association
belongs_to :user
has_many :comments
has_many :favorites

# commentsテーブル
|column        | type        |  Options                      |
|--------------|-------------|-------------------------------|
|user          |references  |null: false, foreign_key: true |
|tweet         |references  |null: false, foreign_key: true |
|comment       |text        |null: false                    |

## association
belongs_to :user
belongs_to :tweet

# contactsテーブル
|column        | type        |  Options                      |
|--------------|-------------|-------------------------------|
|user          |references   |null: false, foreign_key: true |
|name          |string       |null: false                    |
|contact_text  |text         |                               |
|opinion_id    |integer      |null: false                    |

## association
belongs_to :user


# favoritesテーブル
|column        | type        |  Options                      |
|--------------|-------------|-------------------------------|
|user          |references   |null: false, foreign_key: true |
|tweet         |references   |null: false, foreign_key: true |

## association
 belongs_to :user
 belongs_to :tweet


# Localテーブル
|column        | type        |  Options                      |
|--------------|-------------|-------------------------------|
|user          |references   |null: false, foreign_key: true |
|area_id       |integer      |null: false                    |
|category_id   |integer      |null: false                    |
|prefecture_id |integer      |null: false                    |
|shop_name     |string       |null: false                    |
|information   |text         |null: false                    |

## association
belongs_to :user




