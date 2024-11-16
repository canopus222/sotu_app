# README
## 🚆 Trainspotter
#### ▶サービスURL：[Trainspotter](https://trainspotter.onrender.com)

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

