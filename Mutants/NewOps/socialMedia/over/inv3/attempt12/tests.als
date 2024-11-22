
pred test1 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User0->Photo1 + User0->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo1 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
posts = User0->Photo1 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo1 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
posts = User0->Photo1 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->User0 + User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
no sees
no posts
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
Day = Day0
inv3[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo0 + User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
posts = User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
suggested = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day1 + Photo1->Day1 + Photo2->Day0
Day = Day0 + Day1
inv3[]
}}}
}
run test5 for 3 but 1 steps
