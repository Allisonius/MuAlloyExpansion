pred test0{
some disj User2, User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1 + User2
profile = User0->Work2 + User1->Work2 + User2->Work2
visible = User0->Work1 + User1->Work1 + User1->Work2 + User2->Work0 + User2->Work1 + User2->Work2
no Institution
no Institution' --loop state
Source = User0 + User1 + User2
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->User2 + Work1->User2 + Work2->User0
inv3[]
}}}
}

run test0

