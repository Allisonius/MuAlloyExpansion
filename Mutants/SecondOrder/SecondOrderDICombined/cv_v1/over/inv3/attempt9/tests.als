pred test0{
some disj Institution2, Institution0, Institution1: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0 + Institution1 + Institution2
Source = Institution0 + Institution1 + Institution2
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->Institution2 + Work1->Institution1 + Work2->Institution0
inv3[]
}}}
}

run test0

