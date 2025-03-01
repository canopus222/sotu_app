# README
## 🚆 Trainspotter
#### ▶サービスURL（サービス停止中。Topページのみアクセス可能）：[Trainspotter](https://trainspotter.onrender.com)

![Trainspotter](https://i.gyazo.com/cc09a9bc48c1dbf730c9ed56b0c095a1.png)

## 🚆 サービス概要

Trainspotter.は、「鉄道車両の写真をみんなで楽しむ」をコンセプトとした、鉄道車両に少しでも興味がある人、好きな人を対象にしたアプリです。普段利用している🚆路線や旅行で利用した路線の車両を投稿することができます。まだ知らない鉄道車両を観察しに行きませんか？
<br>
<br>

## 🚆 このサービスへの思い・作りたい理由

1：甥っ子が鉄道好きで、今後様々な鉄道車両を利用する機会があった時に記録に残しておきたい。

2：私だからこそ知っているベストショットの時間やポジションを知りたい。

3：家にいてもアプリ一つで日本中の鉄道車両の写真を楽しみたい。
<br>
<br>

## 🚆 ユーザー層について
- 撮り鉄の人
- 鉄道に少しでも興味のある人
- （多くの方に鉄道車両を利用してもらいたい鉄道会社関係者）
<br>
<br>


## 🚆 サービスの利用イメージ
- スマホやPCでの利用。
- 自分や他者と共有することで、もっと鉄道を好きになってもらう。鉄道仲間を増やす
- （鉄道関係者の場合、鉄道車両を撮影してもらうことで、魅力を知ってもらうきっかけとなる。さらには鉄道の利用にもつながる。）
<br>
<br>

## 🚆 ユーザーの獲得について
SNS、個人のネットワーク、そして RUNTEQ のようなコミュニティを活用して、アプリの存在を広める予定です。


## 🚆 サービスの差別化ポイント・推しポイント
- スタンプラリー形式のものや、訪れた駅を地図上で塗りつぶすようなアプリは存在するが、いずれも個人完結型であった。Trainspotter.のような共有型である点。
- 投稿数に応じてバッジ機能を実装した点。
- お気に入り登録のアイコンを電車マークにすることでかわいらしさを加えた点。


## 🚆 機能一覧
- ユーザー登録機能/ログイン機能/Googleログイン機能
- パスワードリセット機能
- マイページ
    - ユーザー情報編集
    - アカウント削除
- 投稿機能
    - 駅名、路線名、都道府県、コメント、撮影場所、画像
- 投稿一覧
    - 詳細（編集、削除）
    - お気に入り追加ボタン（電車アイコン）
    - 検索機能（都道府県、路線名、駅名、フリーワード）
- ユーザー自身の投稿一覧
- お気に入り投稿一覧
- バッジページ
- SNSシェア機能（X：旧Twitter）
<br>
<br>


##  機能紹介
| 新規登録  |
| :-------------: |
| [![Image from Gyazo](https://i.gyazo.com/41a774cb3ef2ac6f0c01015f601c51ae.png)](https://gyazo.com/41a774cb3ef2ac6f0c01015f601c51ae)  |
| 名前、メールアドレス、パスワード、パスワード確認から新規登録が可能。 |

| 新規投稿  |
| :-------------: |
| [![Image from Gyazo](https://i.gyazo.com/c6c3ce75c4000c0f8c435db94e562dd9.png)](https://gyazo.com/c6c3ce75c4000c0f8c435db94e562dd9)  |
| 駅名と路線名はID番号から簡単に一致させることができます。全て必須項目です。 |

| 投稿一覧  |
| :-------------: |
| [![Image from Gyazo](https://i.gyazo.com/cc4e8657b264515bc24dc63e37f1ca4f.png)](https://gyazo.com/cc4e8657b264515bc24dc63e37f1ca4f)  |
| 投稿一覧からお気に入り登録や投稿詳細を見ることが可能。上部には様々な方法で検索できるようにしています。（お気に入り一覧。ユーザー自身の投稿一覧も同様） |

| 投稿詳細  |
| :-------------: |
| [![Image from Gyazo](https://i.gyazo.com/4e76bd148b3308819294875397e87bee.png)](https://gyazo.com/4e76bd148b3308819294875397e87bee)  |
| 投稿詳細から編集、削除が可能。 |

| マイバッジ  |
| :-------------: |
| <a href="https://gyazo.com/4d2fe6556c5209ed50ffe5a2b93d9771"><img src="https://i.gyazo.com/4d2fe6556c5209ed50ffe5a2b93d9771.png" alt="Image from Gyazo" width="788"/></a>  |
| 投稿数に応じたバッジ機能。何枚でバッジが現れるかはお楽しみ。 |


## 🚆 機能の実装方針予定
| カテゴリ       | 使用技術                 | 
| -------------- | ------------------------ | 
| 開発環境       | Docker                   | 
| バックエンド   | Ruby 3.2.2 / Rails 7.1.3 | 
| フロントエンド | TurboとStimulus          | 
| データベース   | PostgreSQL               | 
| インフラ       | Render                   | 
| 認証           | Sorcery ・ Google OAuth  | 

## 🚆 画面遷移
https://www.figma.com/design/zs7G6xVJ5TL1VsfI3zKSdT/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3Trainspotter.-ver1?node-id=0-1&node-type=canvas&t=BXqY7fXc7r4Mx75c-0

## 🚆 ER図
[![Image from Gyazo](https://i.gyazo.com/4bfac46e86c35dbb673d59c30f322bf8.png)](https://gyazo.com/4bfac46e86c35dbb673d59c30f322bf8)

https://dbdiagram.io/d/6699e3468b4bb5230ec32ca4


## 🚆 このアプリに関する記事

★マークは特に時間がかかった内容や苦労した内容になります

[データーベースを確認したい](https://qiita.com/wa-chan222/items/9a3854b3c6c01ef23f28)

★[【Error】ログアウトボタンが反応しない](https://qiita.com/wa-chan222/items/62a13a64cf8da57672bd)

★[【Error】migrateがうまくいかずusersテーブルにnameだけ登録できない問題](https://qiita.com/wa-chan222/items/2877ac94456fe19e4a3c)

★[【豆知識】マイグレーションファイル生成時userはinteger?references?＆名称変更注意点など](https://qiita.com/wa-chan222/items/4420089687e853f18a25)

★[【豆知識とError】Google認証周り。APIキーを含む秘匿情報について](https://qiita.com/wa-chan222/items/9e4eb25be9f21d180b5f)

[【豆知識】リセットパスワードの流れを改めて整理してみる](https://qiita.com/wa-chan222/items/bf1a6e7f8eb38eb154f2)

★[【豆知識】 Google のクライアント ID やシークレットにアクセスする方法について](https://qiita.com/wa-chan222/items/069ed984c2b9cd1a63d0)

[【豆知識+Error】コードがあっていても少し位置が違うだけでエラーになってしまうrenderのお話](https://qiita.com/wa-chan222/items/13375cb9de3d9ea11b2a)

★[【豆知識】Google認証APIキーを含む秘匿情報ENVコードで管理。+credentialとの違い](https://qiita.com/wa-chan222/items/9ae3c395591685e79361)

★[【豆知識】.gitignoreとconfigとの関係性について](https://qiita.com/wa-chan222/items/5c672c2e77574f676b90)

★[【Error】`rails db:migrate` コマンドを実行した際に発生したエラー。タイムスタンプについて知る](https://qiita.com/wa-chan222/items/cd122957aea530523a4b)

[【豆知識】has_manyの設定について少し理解](https://qiita.com/wa-chan222/items/9995cf5b49cc5814cac5)

[【豆知識】Tailwind背景色が何かおかしかった](https://qiita.com/wa-chan222/items/2c379949c31fb13ac49e)

★[【豆知識とError】belongs_toとvalidatesのちょっとした誤解](https://qiita.com/wa-chan222/items/dcd7439d5e124643ea6c)

[【豆知識】CSVファイルインポートを少し学ぶ](https://qiita.com/wa-chan222/items/06e706c3536366a3ccbb)

[【Error】古いCSSやjavascriptがのこっていてうまくいかない](https://qiita.com/wa-chan222/items/2b5092d6bd35de4ec87c)

[【Error】シングルクォートとダブルクォート。Rubocopの自動修正機能](https://qiita.com/wa-chan222/items/e7c3f15bde7c242f7e12)

[【豆知識】条件分岐。if とunless と演算子](https://qiita.com/wa-chan222/items/6e2ccdf31a8878cd2fd0)

[【Error】ラベルのエラーについて](https://qiita.com/wa-chan222/items/2053b69ac2880526a0ec)

[【豆知識】Render無料枠終了後のその先](https://qiita.com/wa-chan222/items/d6f5d946cf9a87508e04)

[【学習】AWSのS3設定 画像関係①](https://qiita.com/wa-chan222/items/5edbfa78d155bcc3171c)

★[【Error】AWS画像関係～原因が全く違った？件](https://qiita.com/wa-chan222/items/bca50912d4f001bf8257)

[【学習】MVP後、わからなかった部分](https://qiita.com/wa-chan222/items/34ce21d085ca07d67450)

[【学習】Githubプロジェクト紐づけ](https://qiita.com/wa-chan222/items/fcb26588b5e6f1838fd1)

[【学習】静的OGPの設定。](https://qiita.com/wa-chan222/items/55e58b9cb4bf2bb2e7c8)

[【Error・学習】RailsプロジェクトにGitHub Actions（Rspec）](https://qiita.com/wa-chan222/items/53e832270140507f4e1c)
