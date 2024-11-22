
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
inv1[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Institution2, Institution0, Institution1: Source {some disj Id0: Id {
no User
no profile
no visible
no User' --loop state
Institution = Institution0 + Institution1 + Institution2
Source = Institution0 + Institution1 + Institution2
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv1[]
}}
}
run test2 for 3 but 1 steps
