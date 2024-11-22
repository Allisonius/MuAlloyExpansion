
pred test1 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv1[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
no sees
no posts
suggested = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
Day = Day0
inv1[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Ad0: Photo {some disj Day0: Day {
no Influencer
no Influencer' --loop state
no User
no follows
no sees
no posts
no suggested
no User' --loop state
Ad = Ad0
Photo = Ad0
date = Ad0->Day0
Day = Day0
inv1[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv1[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User0 + User2->User2
sees = User1->Photo0
posts = User1->Ad0
suggested = User0->User1 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv1[]
}}}
}
run test5 for 3 but 1 steps
