
pred test1 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2
posts = User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
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
sees = User1->Photo1 + User1->Ad0 + Influencer0->Photo0
posts = User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad0 + User1->Ad2 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad1 + User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
suggested = User0->User0 + User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2
posts = User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad2 + Influencer0->Ad1 + Influencer0->Ad2
suggested = User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User1->User0 + User1->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0
sees = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User0 + User1->User2
sees = User0->Ad1 + User1->Ad0 + User1->Ad1 + User2->Photo0 + User2->Ad0 + User2->Ad1
posts = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad1 + User2->Photo0 + User2->Ad0
suggested = User0->User2 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User2->User2
sees = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Ad0 + User1->Ad1 + User2->Ad1
posts = User0->Photo0 + User1->Photo0 + User1->Ad1 + User2->Photo0 + User2->Ad0
suggested = User0->User1 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Photo1 + User0->Photo2 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
suggested = User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0
suggested = User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + Influencer0->Influencer0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
suggested = User0->Influencer0 + User1->User0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + Influencer0->Influencer0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
suggested = User0->Influencer0 + User1->User0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + Influencer0->Influencer0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
suggested = User0->Influencer0 + User1->User0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User1->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User0->Photo1 + User0->Photo2 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
suggested = User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad2
suggested = User1->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User1->Ad0 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
posts = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad1 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1 + Influencer0->Ad2
suggested = User1->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Ad0 + User0->Ad1 + User0->Ad2 + User1->Ad0 + User1->Ad1 + Influencer0->Ad1 + Influencer0->Ad2
posts = User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1
no suggested
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo1 + User0->Photo2 + User1->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo2 + User1->Photo0 + User1->Photo1 + Influencer0->Photo2
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test22 for 3 but 1 steps
pred test23 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test23 for 3 but 1 steps
pred test24 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User1->User2 + User2->User0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User2->Ad0 + User2->Ad1
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->User1 + User1->User1 + User1->User2 + User2->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test24 for 3 but 1 steps
pred test25 {
some disj Influencer0, User1, User0: User {some disj Ad0, Ad2, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
sees = User0->Ad1 + User0->Ad2 + User1->Ad0 + User1->Ad2 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad0 + User0->Ad2 + User1->Ad1 + Influencer0->Ad2
suggested = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
Ad = Ad0 + Ad1 + Ad2
Photo = Ad0 + Ad1 + Ad2
date = Ad0->Day2 + Ad1->Day2 + Ad2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test25 for 3 but 1 steps
pred test26 {
some disj Influencer0, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + Influencer0
follows = User0->Influencer0
sees = User0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test26 for 3 but 1 steps
pred test27 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User1->Photo1 + User1->Photo2 + Influencer0->Photo0
posts = User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo2
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test27 for 3 but 1 steps
pred test28 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->User0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test28 for 3 but 1 steps
pred test29 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
no follows
sees = User0->Photo1 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test29 for 3 but 1 steps
pred test30 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User0 + User0->Influencer0 + User1->User0 + User1->User1
sees = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo2
suggested = User0->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0
no follows
sees = User0->Photo0 + User0->Photo1 + User0->Photo2
posts = User0->Photo0 + User0->Photo1
suggested = User0->User0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test31 for 3 but 1 steps
pred test32 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
posts = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test32 for 3 but 1 steps
pred test33 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->Influencer0
sees = User1->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test33 for 3 but 1 steps
pred test34 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo1 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo2
suggested = User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test34 for 3 but 1 steps
pred test35 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo0 + User0->Photo1 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test35 for 3 but 1 steps
pred test36 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = Influencer0->User0 + Influencer0->User1
sees = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test36 for 3 but 1 steps
pred test37 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->Influencer0 + Influencer0->User1
sees = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User0->User1 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test37 for 3 but 1 steps
pred test38 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User0 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo0 + User0->Photo1 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test38 for 3 but 1 steps
pred test39 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + Influencer0->User1
sees = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo1 + User1->Ad0 + Influencer0->Photo1
posts = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Photo1 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test39 for 3 but 1 steps
pred test40 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + User1->Influencer0
sees = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo1 + User1->Photo2 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test40 for 3 but 1 steps
pred test41 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
no suggested
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test41 for 3 but 1 steps
pred test42 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = Influencer0->User1 + Influencer0->Influencer0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
no suggested
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test42 for 3 but 1 steps
pred test43 {
some disj User2, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User2->User0 + User2->User1
sees = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Photo1 + User1->Ad0 + User2->Ad0
posts = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + User1->Ad0 + User2->Ad0
suggested = User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test43 for 3 but 1 steps
pred test44 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo1 + User1->Ad0
posts = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test44 for 3 but 1 steps
pred test45 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
suggested = User0->Influencer0 + User1->User0 + User1->User1
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test45 for 3 but 1 steps
pred test46 {
some disj Influencer2, Influencer1, Influencer0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0 + Influencer1 + Influencer2
User = Influencer0 + Influencer1 + Influencer2
follows = Influencer2->Influencer1
sees = Influencer0->Ad0 + Influencer0->Ad1 + Influencer1->Photo0 + Influencer2->Ad0 + Influencer2->Ad1
posts = Influencer0->Photo0 + Influencer1->Photo0 + Influencer1->Ad0 + Influencer1->Ad1 + Influencer2->Photo0 + Influencer2->Ad0
no suggested
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test46 for 3 but 1 steps
pred test47 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1
sees = User0->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test47 for 3 but 1 steps
pred test48 {
some disj User2, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User2->User1
sees = User1->Ad0 + User1->Ad1 + User2->Ad0 + User2->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1 + User2->Photo0 + User2->Ad1
suggested = User0->User1 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test48 for 3 but 1 steps
pred test49 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo1 + User1->Ad0
posts = User0->Photo0 + User0->Photo1 + User1->Photo0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test49 for 3 but 1 steps
pred test50 {
some disj User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0
no follows
sees = User0->Ad0
posts = User0->Photo0
no suggested
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test50 for 3 but 1 steps
pred test51 {
some disj Influencer1, Influencer0, User0: User {some disj Ad0, Photo0: Photo {some disj Day0, Day1: Day {
Influencer = Influencer0 + Influencer1
User = User0 + Influencer0 + Influencer1
follows = User0->User0 + User0->Influencer0
sees = User0->Photo0 + User0->Ad0 + Influencer0->Ad0 + Influencer1->Ad0
posts = User0->Photo0 + User0->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer1->Photo0
suggested = User0->User0 + User0->Influencer1 + Influencer1->User0 + Influencer1->Influencer1
Ad = Ad0
Photo = Photo0 + Ad0
date = Photo0->Day1 + Ad0->Day1
Day = Day0 + Day1
inv3[]
}}}
}
run test51 for 3 but 1 steps
pred test52 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + Influencer0->User1
sees = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo0
suggested = User0->User1 + User1->User1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test52 for 3 but 1 steps
pred test53 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Ad0 + User1->Photo0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0
suggested = User0->Influencer0 + User1->User1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test53 for 3 but 1 steps
pred test54 {
some disj User2, User1, User0: User {some disj Photo0: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User0->User2 + User1->User0
sees = User1->Photo0
posts = User0->Photo0 + User1->Photo0 + User2->Photo0
suggested = User0->User2 + User2->User0 + User2->User2
no Ad
no Ad' --loop state
Photo = Photo0
date = Photo0->Day2
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test54 for 3 but 1 steps
pred test55 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User1 + Influencer0->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Photo0 + User0->Photo1 + User1->Ad0 + Influencer0->Ad0
posts = User0->Photo0 + User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User1->User1 + User1->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test55 for 3 but 1 steps
pred test56 {
some disj User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0
follows = User0->User0
sees = User0->Photo0 + User0->Ad0
posts = User0->Photo0 + User0->Ad0
no suggested
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test56 for 3 but 1 steps
pred test57 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User0 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Photo0 + User0->Photo1 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
posts = User0->Photo0 + User0->Photo1 + User0->Photo2 + User1->Photo0 + User1->Photo1 + User1->Photo2 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
suggested = Influencer0->User1 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test57 for 3 but 1 steps
pred test58 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test58 for 3 but 1 steps
pred test59 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test59 for 3 but 1 steps
pred test60 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
sees = User0->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0
suggested = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test60 for 3 but 1 steps
pred test61 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test61 for 3 but 1 steps
pred test62 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
posts = User0->Ad0 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test62 for 3 but 1 steps
pred test63 {
some disj Influencer0, User1, User0: User {some disj Photo2, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo1 + User1->Photo0 + User1->Photo2 + Influencer0->Photo1
posts = User0->Photo1 + User0->Photo2 + User1->Photo0 + Influencer0->Photo1 + Influencer0->Photo2
suggested = User0->User0 + User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
no Ad
no Ad' --loop state
Photo = Photo0 + Photo1 + Photo2
date = Photo0->Day2 + Photo1->Day2 + Photo2->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test63 for 3 but 1 steps
pred test64 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad0 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test64 for 3 but 1 steps
pred test65 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
posts = User0->Ad1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->User1 + User1->User0 + User1->Influencer0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test65 for 3 but 1 steps
pred test66 {
some disj User2, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
no Influencer
no Influencer' --loop state
User = User0 + User1 + User2
follows = User1->User2 + User2->User0
sees = User0->Photo1 + User0->Ad0 + User1->Ad0 + User2->Photo1 + User2->Ad0
posts = User0->Photo1 + User0->Ad0 + User1->Photo1 + User1->Ad0 + User2->Photo1
suggested = User0->User2 + User2->User0 + User2->User2
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test66 for 3 but 1 steps
pred test67 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->Influencer0 + Influencer0->Influencer0
sees = User0->Ad0 + User0->Ad1 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad0 + User0->Ad1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->User0 + User0->User1 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test67 for 3 but 1 steps
pred test68 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User0 + User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
posts = User0->Ad0 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test68 for 3 but 1 steps
pred test69 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User1->Photo0 + User1->Photo1 + User1->Ad0
posts = User1->Photo0 + User1->Photo1 + Influencer0->Ad0
suggested = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test69 for 3 but 1 steps
pred test70 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad1 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Photo0 + User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test70 for 3 but 1 steps
pred test71 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
suggested = User0->User0 + User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test71 for 3 but 1 steps
pred test72 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User0->Ad1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad0 + User0->Ad1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
no suggested
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test72 for 3 but 1 steps
pred test73 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad1 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Ad1 + User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User1 + Influencer0->User0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test73 for 3 but 1 steps
pred test74 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + User1->Ad1 + Influencer0->Ad0
posts = User0->Ad0 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
suggested = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test74 for 3 but 1 steps
pred test75 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Ad0
posts = User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->Influencer0 + User1->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test75 for 3 but 1 steps
pred test76 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + Influencer0->User0 + Influencer0->User1
sees = User0->Ad0 + User1->Photo0 + User1->Photo1 + User1->Ad0
posts = User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test76 for 3 but 1 steps
pred test77 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad0 + User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User0->Ad0 + User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User0->User0 + User0->Influencer0 + User1->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test77 for 3 but 1 steps
pred test78 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad0 + User0->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0
suggested = User0->User0 + User0->Influencer0 + User1->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test78 for 3 but 1 steps
pred test79 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0
sees = User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User1->Photo0 + User1->Ad0 + User1->Ad1 + Influencer0->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
suggested = User1->User0 + User1->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test79 for 3 but 1 steps
pred test80 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->User0 + User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test80 for 3 but 1 steps
pred test81 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test81 for 3 but 1 steps
pred test82 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + Influencer0->User1 + Influencer0->Influencer0
sees = User1->Ad0 + User1->Ad1 + Influencer0->Ad0 + Influencer0->Ad1
posts = User1->Ad0 + Influencer0->Photo0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + Influencer0->Influencer0
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test82 for 3 but 1 steps
pred test83 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User1->Photo0 + User1->Ad0 + User1->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test83 for 3 but 1 steps
pred test84 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Ad0 + User0->Ad1 + User1->Photo0 + Influencer0->Ad0 + Influencer0->Ad1
posts = User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test84 for 3 but 1 steps
pred test85 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
no suggested
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test85 for 3 but 1 steps
pred test86 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test86 for 3 but 1 steps
pred test87 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo1 + User0->Ad0 + User1->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo0 + User0->Photo1 + User1->Ad0 + Influencer0->Photo0 + Influencer0->Photo1
suggested = User0->User0 + User0->User1 + User1->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test87 for 3 but 1 steps
pred test88 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Ad0
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test88 for 3 but 1 steps
pred test89 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo0, Ad1: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User1->Photo0 + User1->Ad0 + User1->Ad1
posts = User0->Ad1 + User1->Photo0 + User1->Ad0 + Influencer0->Ad1
suggested = User0->Influencer0 + User1->User0 + User1->User1
Ad = Ad0 + Ad1
Photo = Photo0 + Ad0 + Ad1
date = Photo0->Day2 + Ad0->Day2 + Ad1->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test89 for 3 but 1 steps
pred test90 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0
sees = User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User0->Ad0 + User1->Photo1 + Influencer0->Photo0 + Influencer0->Photo1 + Influencer0->Ad0
no suggested
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test90 for 3 but 1 steps
pred test91 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User0 + User1->User1 + Influencer0->User1
sees = User0->Photo1 + User0->Ad0 + User1->Photo0 + User1->Photo1 + Influencer0->Ad0
posts = User0->Photo1 + User1->Photo1 + User1->Ad0 + Influencer0->Photo0
suggested = User0->User1 + User1->User0 + User1->User1 + User1->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv3[]
}}}
}
run test91 for 3 but 1 steps
