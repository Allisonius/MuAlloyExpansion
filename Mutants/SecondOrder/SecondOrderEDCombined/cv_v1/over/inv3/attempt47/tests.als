pred test0{
some disj User0, Institution0, Institution1: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work2
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->Institution1
inv3[]
}}}
}

run test0

pred test1{
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
inv3[]
}}}
}

run test1

pred test2{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1: Work {
User = User0
no profile
visible = User0->Work1
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User0
inv3[]
}}}
}

run test2

