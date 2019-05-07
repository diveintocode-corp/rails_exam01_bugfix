# RailsExam:01 Bugfix

This application contains some bugs for beginner of RoR. 

# How to Setup（課題実施時にこの項目は必ず実施して下さい！）
step1: fork this Repository
- Press fork button  
https://gyazo.com/04e45514f4a9cb64a32168a8a5f34cec  
or
- command  
`XXX = your_github_user_name`  
`git clone git@github.com:XXX/rails_exam01_bugfix.git`  

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
