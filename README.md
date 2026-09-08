# RailsExam:01 Bugfix

This application contains some bugs for beginner of RoR. 

# How to Setup（課題実施時にこの項目は必ず実施して下さい！）
step1: fork this Repository
- Press fork button  
https://gyazo.com/04e45514f4a9cb64a32168a8a5f34cec  

step2: checkout your branch and run server

PostgreSQLを起動してから実行してください（検証環境: PostgreSQL 18）。
既定ではローカルの5432番ポートへ接続します。接続先を変える場合は
`DATABASE_URL`を指定してください。assetsのビルドにはNode.jsが必要です
（検証環境: Node.js 24）。

```bash
gem install bundler -v 4.0.17
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails server
```


### 動作確認

```bash
RAILS_ENV=test bundle exec rails db:prepare
bundle exec rspec
bundle exec rails test
bundle exec rails zeitwerk:check
bundle exec rubocop
```

このアプリには学習用のバグが意図的に含まれています。未修正の状態では
RSpecが失敗し、画面操作にも不具合があります。Ruby／Railsの更新では
課題のバグやテストの期待値を変更していません。
`rails test`用の実テストはなく、課題のテストはRSpecです。

本番用assetsのビルド確認:

```bash
RAILS_ENV=production SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile
```

本番起動では`SECRET_KEY_BASE`（またはcredentialsと`RAILS_MASTER_KEY`）を
設定し、既定のDB設定を使う場合は`MYAPP_DATABASE_PASSWORD`も指定してください。
`SECRET_KEY_BASE_DUMMY`はassetsビルドの確認専用です。

# Requirement(Option)

When you fix bugs, write comment `Cause` and `Reason` above your code.  

:en  
`# ErrorCause:　XXX`  
`# FixReason: XXX`  
`your code`  

:jp  
`# エラー原因: XXX`  
`# 修正の意図: XXX`  
`your code`  
```ruby
class Task < ApplicationRecord
  # ErrorCause: Can't use association @task.labels
  # FixReason: Fix typo (label --> labels)
  has_many :labels
end
```

---
### System Versions

* Ruby version  
`4.0.5`

* Rails version  
`8.1.3.1`

---
### How to Install Ruby 4.0.5
```bash
brew upgrade rbenv ruby-build
rbenv install 4.0.5
rbenv local 4.0.5
```

---
### Appendix（付録）
下記のGemを導入しています。
1. デバッグ用:5gems
```
gem 'better_errors'
gem 'binding_of_caller'
gem 'pry-byebug'
gem 'pry-doc' https://qiita.com/joker1007/items/42f00b12c65bbec0e50a
```
  
2. コード解析用:2gems
```
gem 'rubocop'
gem 'rails_best_practices'
```
`.rubocop.yml` も設定済みです。
こちらの詳細は直接説明致します。

