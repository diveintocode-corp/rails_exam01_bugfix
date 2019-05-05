# RailsExam:01 Bugfix

This application contains some bugs for beginner of RoR.  

# Requirement

When you fix bugs, write comment `Cause` and `Reason` above your code.  

:en  
`# [Error Cause]　XXX`  
`# [Fix Reason] XXX`  
`your code`  

:jp  
`# [エラー原因] XXX`  
`# [修正の意図] XXX`  
`your code`  


# How to Setup
step1: fork this Repository
- Press fork button
https://gyazo.com/1a3a34072564edf92916678fd7ce5740  
or
- command
`XXX = your_github_user_name`  
`git clone git@github.com:XXX/rails_exam01_bugfix.git`  

step2:  
`git checkout -b bugfix`  
`bundle install`  
`rails db:create`  
`rails db:migrate`  
`rails db:seed`  
`rails server`  

# How to push commit to Github
`git add -A`  
`git commit -m "Fix: [write your message]"`  
`git push origin bugfix`  

---
### System Versions

* Ruby version  
`2.6.3`

* Rails version  
`2.5.3`

