
pred test1 {
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
no profile
visible = User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User1
inv2[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work2
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0
Source = Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj User2, User1, User0: Source {some disj Id0, Id1: Id {some disj Work0: Work {
User = User0 + User1 + User2
no profile
no visible
no Institution
no Institution' --loop state
Source = User0 + User1 + User2
Id = Id0 + Id1
Work = Work0
ids = Work0->Id0 + Work0->Id1
source = Work0->User2
inv2[]
}}}
}
run test6 for 3 but 1 steps
