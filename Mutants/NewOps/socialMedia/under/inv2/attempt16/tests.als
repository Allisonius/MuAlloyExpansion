
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
inv2[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo1
posts = User0->Photo1 + User1->Photo1 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv2[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1: Day {
no Influencer
no Influencer' --loop state
no User
no follows
no sees
no posts
no suggested
no User' --loop state
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day1 + Photo1->Day1 + Photo2->Day0
Day = Day0 + Day1
inv2[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + User1->Influencer0
sees = User1->Ad0 + User1->Ad1 + Influencer0->Photo0
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv2[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1
sees = User0->Photo1
no posts
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv2[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
posts = User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv2[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
posts = User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->User0 + User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv2[]
}}}
}
run test7 for 3 but 1 steps
