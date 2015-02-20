### Familyable Test App

The [Familyable](https://github.com/brookisme/familyable) gem claims a **huge** perfomance gain of a recursive N+1 search for finding decendents/elders/etc...
This app is a test app that is going to check that that is actually true.

Once completed, the results will be here in this README.  Until then...

##### Start testing yourself

```
$  git clone git@github.com:brookisme/familyable-testapp.git
$  cd familyable-testapp
$  bundle exec rake db:create
$  bundle exec rake db:migrate
$  bundle exec rake db:seed
```

db/seeds.rb is currently set up to create 5 generations, where the first generation has 15 people and each generation afterwards is 3 to 6 times bigger than the parents generation.  Edit this file as you see fit for your testing needs.