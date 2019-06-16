# RailsExam:01 Bugfix

This application contains some bugs for beginner of RoR. 

# How to Setup（課題実施時にこの項目は必ず実施して下さい！）
step1: fork this Repository
- Press fork button  
https://gyazo.com/04e45514f4a9cb64a32168a8a5f34cec  

step2: checkout your branch and run server  
  
`git checkout -b bugfix`  
`bundle install`  
`rails db:create`  
`rails db:migrate`  
`rails db:seed`  
`rails server`  

step3: push your commits and create PullRequest on Github

# How to push commit to Github
`git add -A`  
`git commit -m "Fix: [write your message]"`  
`git push origin bugfix`  


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
`2.6.3`

* Rails version  
`2.5.3`

---
### How to Install Ruby 2.6.3
`brew upgrade rbenv ruby-build`  
`rbenv install 2.6.3`  
`rbenv local 2.6.3`  

---
### Appendix（付録）
下記のGemを導入しています。
1. デバッグ用:5gems
```
gem 'better_errors'
gem 'binding_of_caller'
gem 'pry-rails'
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

また、Siderなどの解析ツールと連携させるのも良いかもしれません。
