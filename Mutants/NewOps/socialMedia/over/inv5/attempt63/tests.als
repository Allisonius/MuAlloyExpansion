
pred test1 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0 + Influencer0->User1
sees = Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
sees = Influencer0->Ad1
posts = User0->Ad0 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1
sees = User0->Ad0 + Influencer0->Ad1
posts = User0->Ad1 + User1->Photo0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Ad0 + Influencer0->Ad1
posts = User0->Ad1 + User1->Photo0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0 + Influencer0->User1
sees = Influencer0->Ad1
posts = User0->Ad0 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad0 + User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Ad0 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Influencer0, User1, User0: User {some disj Day0: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
no sees
no posts
suggested = User0->User1 + User1->User1 + User1->Influencer0
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
Day = Day0
inv5[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo0 + User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
posts = User0->Photo1 + User1->Photo0 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo2
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Influencer0, User1, User0: User {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
no sees
no posts
suggested = User0->User1 + User1->User1 + User1->Influencer0
no Ad
no Ad' --loop state
no Photo
no date
no Photo' --loop state
no Day
no Day' --loop state
inv5[]
}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Ad0 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User1->Ad0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Influencer1, Influencer0, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0 + Influencer1
User = User0 + Influencer0 + Influencer1
follows = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0 + Influencer0->Influencer1 + Influencer1->Influencer0
sees = User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer1->Ad1
posts = User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer1->Ad1
suggested = User0->Influencer0 + Influencer0->Influencer0 + Influencer0->Influencer1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Influencer1, Influencer0, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0 + Influencer1
User = User0 + Influencer0 + Influencer1
follows = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer1 + Influencer1->Influencer0 + Influencer1->Influencer1
sees = User0->Photo1 + Influencer0->Photo1 + Influencer1->Photo0 + Influencer1->Ad0
posts = User0->Photo1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer1->Photo1
suggested = User0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User0 + User1->User1 + User1->User2
sees = User0->Ad0 + User1->Photo0 + User1->Ad1 + User2->Ad0
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->User0 + User0->User2 + User1->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Influencer1, Influencer0, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0 + Influencer1
User = User0 + Influencer0 + Influencer1
follows = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0 + Influencer0->Influencer1 + Influencer1->User0 + Influencer1->Influencer0 + Influencer1->Influencer1
sees = User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer1->Ad1
suggested = User0->User0 + User0->Influencer1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User1 + User1->User2 + User2->User0 + User2->User2
sees = User0->Photo0 + User0->Ad1 + User1->Ad0 + User2->Ad1
posts = User0->Photo0 + User0->Ad1 + User1->Ad0 + User2->Ad1
suggested = User0->User2 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day1 + Ad0->Day0 + Ad1->Day1
Day = Day0 + Day1
inv5[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj User2, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User0 + User1->User1
sees = User0->Photo0 + User0->Ad0 + User2->Photo0 + User2->Photo1 + User2->Ad0
posts = User0->Photo0 + User0->Photo1 + User1->Photo1
suggested = User0->User1 + User1->User0 + User2->User2
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day2
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Ad0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day1 + Ad1->Day2
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0: Photo {some disj Day0, Day1: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Photo0 + User1->Photo0
posts = User0->Photo0 + User0->Ad0 + Influencer0->Photo0
suggested = User0->User1 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Ad0
date = Photo0->Day1 + Ad0->Day1
Day = Day0 + Day1
inv5[]
}}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Influencer0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = Influencer0
follows = Influencer0->Influencer0
no sees
posts = Influencer0->Photo1
no suggested
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv5[]
}}}
}
run test22 for 3 but 1 steps
