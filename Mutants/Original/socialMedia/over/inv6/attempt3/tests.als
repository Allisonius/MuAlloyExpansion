
pred test1 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->Influencer0 + User1->User1 + Influencer0->User0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Influencer0, User1, User0: User {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->User1 + User1->User1 + User1->Influencer0 + Influencer0->User0
no sees
no posts
suggested = User0->Influencer0 + User1->User0 + User1->User1
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
run test2 for 3 but 1 steps
pred test3 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User0->Influencer0 + User1->User1 + User1->Influencer0 + Influencer0->User0
sees = User0->Photo0 + User1->Photo0 + User1->Photo1 + User1->Ad0
posts = User0->Photo1 + User1->Photo0 + User1->Ad0 + Influencer0->Photo1
suggested = User0->Influencer0 + Influencer0->User0 + Influencer0->Influencer0
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day1
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Influencer0, User1, User0: User {some disj Ad0, Photo1, Photo0: Photo {some disj Day0, Day1, Day2: Day {
Influencer = Influencer0
User = User0 + User1 + Influencer0
follows = User1->User0 + User1->User1 + User1->Influencer0 + Influencer0->User1
sees = User1->Photo0 + User1->Photo1 + User1->Ad0
no posts
no suggested
Ad = Ad0
Photo = Photo0 + Photo1 + Ad0
date = Photo0->Day2 + Photo1->Day2 + Ad0->Day2
Day = Day0 + Day1 + Day2
inv6[]
}}}
}
run test4 for 3 but 1 steps
