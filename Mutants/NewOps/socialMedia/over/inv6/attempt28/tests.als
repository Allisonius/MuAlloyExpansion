
pred test1 {
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
inv6[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = Influencer0->Photo0 + Influencer0->Photo1
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer1, Influencer0, User0: User {
Influencer = Influencer0 + Influencer1
User = User0 + Influencer0 + Influencer1
follows = User0->User0 + User0->Influencer0 + Influencer0->Influencer1 + Influencer1->User0 + Influencer1->Influencer1
no sees
no posts
suggested = Influencer0->User0 + Influencer0->Influencer0 + Influencer0->Influencer1
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
no Day
no Day' --loop state
inv6[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj User1, User0: User {
no Influencer
no Influencer' --loop state
User = User0 + User1
follows = User0->User1 + User1->User1
no sees
no posts
suggested = User0->User0 + User0->User1
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
no Day
no Day' --loop state
inv6[]
}
}
run test5 for 3 but 1 steps
pred test6 {
some disj User0: User {some disj Photo1, Photo0: Photo {some disj Day0: Day {
no Influencer
no Influencer' --loop state
User = User0
no follows
sees = User0->Photo1
posts = User0->Photo1
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1
date = Photo0->Day0 + Photo1->Day0
Day = Day0
inv6[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj User2, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User1 + User0->User2 + User1->User1 + User2->User1 + User2->User2
sees = User0->Photo1 + User1->Ad0 + User2->Photo0
posts = User0->Photo0 + User0->Photo1 + User1->Ad0 + User2->Photo1
suggested = User0->User2 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day0 + Photo1->Day0 + Ad0->Day0
Day = Day0
inv6[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo1 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
posts = User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day0 + Photo1->Day0 + Photo2->Day0
Day = Day0
inv6[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj User2, User1, User0: User {some disj Ad0, Photo0: Photo {some disj Day0: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User1->User0 + User1->User2 + User2->User0 + User2->User2
sees = User0->Ad0 + User1->Photo0
posts = User0->Photo0 + User1->Ad0 + User2->Photo0
suggested = User0->User0 + User0->User1 + User0->User2
Ad = Ad0
Photo = Photo0 + Ad0
date = Photo0->Day0 + Ad0->Day0
Day = Day0
inv6[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Influencer0, User0: User {
Influencer = Influencer0
User = User0 + Influencer0
follows = User0->Influencer0 + Influencer0->Influencer0
no sees
no posts
suggested = User0->User0 + User0->Influencer0
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
no Day
no Day' --loop state
inv6[]
}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Influencer0, User1, User0: User {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
no sees
no posts
suggested = User0->User0 + User0->User1
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
no Day
no Day' --loop state
inv6[]
}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User0->Influencer0 + User1->User1 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Photo1 + User1->Photo0 + User1->Ad0
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
no suggested
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day0 + Photo1->Day0 + Ad0->Day0
Day = Day0
inv6[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1
sees = User0->Ad0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad1 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
posts = User0->Photo1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Influencer0, User1, User0: User {some disj Ad0: Photo {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User1->Ad0
no posts
suggested = User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0
Photo = Ad0
date = Ad0->Day0
Day = Day0
inv6[]
}}}
}
run test15 for 3 but 1 steps
