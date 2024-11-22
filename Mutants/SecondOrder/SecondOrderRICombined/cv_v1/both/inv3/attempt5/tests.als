pred test0{
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
inv3[]
}}}
}

run test0

pred test1{
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
inv3[]
}
}

run test1

