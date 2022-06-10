# アプリケーション名	
Souvenir

# アプリケーション概要	
百貨店や駅中で売っているお菓子の商品比較、口コミ投稿が出来るサービス。

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
※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能	
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。

 # データベース設計
 [![Image from Gyazo](https://i.gyazo.com/e6d153090db92dcd25d8b6c6199fb664.png)](https://gyazo.com/e6d153090db92dcd25d8b6c6199fb664)

 # 画面遷移図
 [![Image from Gyazo](https://i.gyazo.com/ffa0d89b157feb3bb049adb80a685189.png)](https://gyazo.com/ffa0d89b157feb3bb049adb80a685189)

# 開発環境	
使用した言語・サービスを記載。

# ローカルでの動作方法
※	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。

# 工夫したポイント
1. 会員登録時にアンケートを取り、その結果を企業側にグラフとして提供した点。 
ユーザー情報を提供することで、企業側もよりユーザーの背景や想いに沿ったコンテンツが作れるのではないかと考えグラフを取り入れた。
2. ビューの色合い
お菓子と言ったら可愛い印象だが、男性が仕事で使うことも考えるとあまり甘い雰囲気には出来ないと思った。
「長時間パソコンや携帯の画面を見ていると目が疲れてきてしまう」といった事も考慮し、色合いを薄い暖色系でまとめてみた。
3. 投稿権限を企業様にのみ付与した点
当初は一般ユーザーも記事投稿が出来るようなサービスを考えていたが、品質が落ちてしまうことが懸念されたため投稿権限を企業側のみと絞る事にした。しかし、ユーザー参加型コンテンツでないとサービスとしての面白みが欠けてしまうため、口コミ機能をつける事で補った。
4. 検索機能の充実化
商品を様々な視点から比較出来るように、キーワードだけでなく商品の特徴や価格帯での検索も可能とした。



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





