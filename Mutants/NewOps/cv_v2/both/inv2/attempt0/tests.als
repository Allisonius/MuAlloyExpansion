
pred test1 {
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->Institution0
inv2[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
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
run test2 for 3 but 1 steps
pred test3 {
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj User1, User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work1 + User1->Work2
Institution = Institution0
Source = User0 + User1 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->User1 + Work1->User0 + Work2->User1
inv2[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User0
inv2[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User0
inv2[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj User1, User0, Institution0: Source {some disj Id0: Id {
User = User0 + User1
no profile
no visible
Institution = Institution0
Source = User0 + User1 + Institution0
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0: Work {
User = User0
no profile
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0
ids = Work0->Id0
source = Work0->Institution0
inv2[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj User0, Institution0, Institution1: Source {some disj Id0: Id {
User = User0
no profile
no visible
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj User0, Institution0, Institution1: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work2
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution1 + Work1->Institution0 + Work2->Institution1
inv2[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj User1, User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work1 + User0->Work2 + User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
Institution = Institution0
Source = User0 + User1 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0 + Work2->Id2
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj User1, User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work2 + User1->Work0 + User1->Work1 + User1->Work2
Institution = Institution0
Source = User0 + User1 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User0 + Work2->Institution0
inv2[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj User0, Institution0: Source {
User = User0
no profile
no visible
Institution = Institution0
Source = User0 + Institution0
no Id
no Id' --loop state
no Work
no ids
no source
no Work' --loop state
inv2[]
}
}
run test15 for 3 but 1 steps
pred test16 {
some disj User0, Institution0: Source {some disj Id0: Id {
User = User0
no profile
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2 + User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work2 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Institution2, Institution0, Institution1: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0 + Institution1 + Institution2
Source = Institution0 + Institution1 + Institution2
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->Institution2 + Work1->Institution1 + Work2->Institution0
inv2[]
}}}
}
run test18 for 3 but 1 steps
