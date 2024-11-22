pred test0{
some disj User1, User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
no profile
no visible
Institution = Institution0
Source = User0 + User1 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User0
inv1[]
}}}
}

run test0

