pred test0{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}

run test0

pred test1{
some disj User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work2
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}

run test1

pred test2{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User1 + Work2->User0
}}}
}

run test2

pred test3{
some disj User0: Source {some disj Id0: Id {
User = User0
no profile
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}

run test3

pred test4{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test4

pred test5{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User0 + Work2->Institution0
}}}
}

run test5

pred test6{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0
ids = Work0->Id0 + Work0->Id1
source = Work0->User0
inv2[]
}}}
}

run test6

pred test7{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work0->Id1 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->User0
inv2[]
}}}
}

run test7

pred test8{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1
source = Work0->User0 + Work1->User0 + Work2->Institution0
}}}
}

run test8

pred test9{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
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

run test9

pred test10{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id2 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0
}}}
}

run test10

pred test11{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test11

pred test12{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0 + Work2->Id2
source = Work0->User0 + Work1->User0 + Work2->User1
}}}
}

run test12

pred test13{
some disj Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0
Source = Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}

run test13

pred test14{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test14

pred test15{
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

run test15

pred test16{
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
}}}
}

run test16

pred test17{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0
ids = Work0->Id0
source = Work0->User0
inv2[]
}}}
}

run test17

pred test18{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0 + Work2->User1
}}}
}

run test18

pred test19{
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

run test19

pred test20{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1: Work {
User = User0 + User1
profile = User0->Work1 + User1->Work1
visible = User0->Work0 + User1->Work0 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1
ids = Work0->Id1 + Work0->Id2 + Work1->Id2
source = Work0->User0 + Work1->User1
}}}
}

run test20

pred test21{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User0 + Work2->User1
}}}
}

run test21

pred test22{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work1 + User0->Work2 + User1->Work0
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test22

pred test23{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test23

pred test24{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1: Work {
User = User0
profile = User0->Work0 + User0->Work1
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1
ids = Work1->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test24

pred test25{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1 + User1->Work2
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User1 + Work2->User0 + Work2->User1
}}}
}

run test25

pred test26{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work2->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test26

pred test27{
some disj User2, User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1 + User2
profile = User0->Work2 + User1->Work0 + User1->Work1 + User2->Work0 + User2->Work1 + User2->Work2
visible = User0->Work1 + User2->Work1
no Institution
no Institution' --loop state
Source = User0 + User1 + User2
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test27

pred test28{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->User0 + Work2->Institution0
}}}
}

run test28

pred test29{
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

run test29

pred test30{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}

run test30

pred test31{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0
}}}
}

run test31

pred test32{
some disj User0, Institution0, Institution1: Source {some disj Id0, Id1: Id {some disj Work0: Work {
User = User0
no profile
no visible
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0 + Id1
Work = Work0
ids = Work0->Id0 + Work0->Id1
source = Work0->Institution1
inv2[]
}}}
}

run test32

pred test33{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1
source = Work0->User0 + Work1->User0
}}}
}

run test33

pred test34{
some disj User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1: Work {
User = User0
profile = User0->Work1
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1
ids = Work0->Id2 + Work1->Id0 + Work1->Id1
source = Work0->User0 + Work1->User0
}}}
}

run test34

pred test35{
some disj Institution0, Institution1: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0 + Institution1
Source = Institution0 + Institution1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->Institution1 + Work1->Institution1 + Work2->Institution1
inv2[]
}}}
}

run test35

pred test36{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0
ids = Work0->Id0 + Work0->Id1
source = Work0->Institution0
inv2[]
}}}
}

run test36

pred test37{
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
}}}
}

run test37

pred test38{
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
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test38

pred test39{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1 + Work1->Id2
source = Work0->User0 + Work1->User1 + Work2->User0
}}}
}

run test39

pred test40{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User1 + Work1->User1 + Work2->User0
}}}
}

run test40

pred test41{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->User1
}}}
}

run test41

pred test42{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test42

pred test43{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User1 + Work2->User0
}}}
}

run test43

pred test44{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0 + Work2->Id2
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test44

pred test45{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
no source
}}}
}

run test45

pred test46{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id2 + Work2->Id1 + Work2->Id2
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test46

pred test47{
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
source = Work0->User0 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test47

pred test48{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = Institution0 + User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0 + Work2->User0
}}}
}

run test48

pred test49{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {
User = User0
no profile
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}

run test49

pred test50{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id2 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->Institution0
}}}
}

run test50

pred test51{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work0 + User1->Work1
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test51

pred test52{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id1 + Work2->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test52

pred test53{
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

run test53

pred test54{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}

run test54

pred test55{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->Institution0 + Work1->User0 + Work2->Institution0
inv2[]
}}}
}

run test55

pred test56{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0: Work {
User = User0 + User1
profile = User1->Work0
visible = User0->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0
ids = Work0->Id0
source = Work0->User1
inv2[]
}}}
}

run test56

pred test57{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0
ids = Work0->Id0 + Work0->Id1 + Work0->Id2
source = Work0->Institution0
inv2[]
}}}
}

run test57

pred test58{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1
visible = User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test58

pred test59{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
no profile
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User1 + Work2->User0
}}}
}

run test59

pred test60{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0 + Work2->User1
}}}
}

run test60

pred test61{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work2->User0
}}}
}

run test61

pred test62{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test62

pred test63{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0 + Work2->User1
}}}
}

run test63

pred test64{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work1 + User1->Work0 + User1->Work2
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User1 + Work2->User0 + Work2->User1
}}}
}

run test64

pred test65{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id0 + Work2->Id1
source = Work0->User0 + Work1->User0
}}}
}

run test65

pred test66{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work1 + User1->Work2
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1
source = Work0->User0 + Work1->User1 + Work2->User0
}}}
}

run test66

pred test67{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
no profile
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test67

pred test68{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
no ids
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test68

pred test69{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2 + User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id1
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test69

pred test70{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = Institution0 + User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
}}}
}

run test70

pred test71{
some disj User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1 + Id2
Work = Work0
ids = Work0->Id0 + Work0->Id1 + Work0->Id2
source = Work0->User0
inv2[]
}}}
}

run test71

pred test72{
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

run test72

pred test73{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work0 + User1->Work1
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test73

pred test74{
some disj Institution0, Institution1: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
no User
no profile
no visible
no User' --loop state
Institution = Institution0 + Institution1
Source = Institution0 + Institution1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id1 + Work2->Id0
source = Work0->Institution1 + Work1->Institution1 + Work2->Institution1
inv2[]
}}}
}

run test74

pred test75{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User0
}}}
}

run test75

pred test76{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1 + Work2->Id2
source = Work0->Institution0 + Work1->User0 + Work2->Institution0
inv2[]
}}}
}

run test76

pred test77{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0 + Work2->Institution0
}}}
}

run test77

pred test78{
some disj User1, User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id2 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test78

pred test79{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test79

pred test80{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test80

pred test81{
some disj User0, Institution0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work1->Id2 + Work2->Id1
source = Work0->User0 + Work1->User0 + Work2->Institution0
}}}
}

run test81

pred test82{
some disj User0, Institution0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work0->Id1 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->Institution0 + Work1->Institution0 + Work2->Institution0
inv2[]
}}}
}

run test82

pred test83{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0
}}}
}

run test83

pred test84{
some disj User0, Institution0: Source {some disj Id0: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
visible = User0->Work0
Institution = Institution0
Source = User0 + Institution0
Id = Id0
Work = Work0
ids = Work0->Id0
source = Work0->User0
inv2[]
}}}
}

run test84

pred test85{
some disj User0, Institution0, Institution1: Source {some disj Id0, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0 + Id1
Work = Work0
ids = Work0->Id1
source = Work0->Institution1
inv2[]
}}}
}

run test85

pred test86{
some disj User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work1 + User0->Work2
visible = User0->Work0
no Institution
no Institution' --loop state
Source = User0
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test86

pred test87{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work0 + User0->Work1 + User0->Work2
visible = User0->Work0 + User0->Work1 + User0->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work2->Id0 + Work2->Id1
source = Work0->User1 + Work1->User0 + Work2->User1
}}}
}

run test87

pred test88{
some disj Id0: Id {
no User
no profile
no visible
no User' --loop state
no Institution
no Institution' --loop state
no Source
no Source' --loop state
Id = Id0
no Work
no ids
no source
no Work' --loop state
inv2[]
}
}

run test88

pred test89{
some disj User0, Institution0, Institution1: Source {some disj Id0, Id2, Id1: Id {some disj Work0: Work {
User = User0
profile = User0->Work0
no visible
Institution = Institution0 + Institution1
Source = User0 + Institution0 + Institution1
Id = Id0 + Id1 + Id2
Work = Work0
ids = Work0->Id0 + Work0->Id1 + Work0->Id2
source = Work0->Institution1
inv2[]
}}}
}

run test89

pred test90{
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
}}}
}

run test90

pred test91{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User0->Work2 + User1->Work1 + User1->Work2
visible = User0->Work2 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0 + Work2->Id0
source = Work0->User1 + Work1->User0
}}}
}

run test91

pred test92{
some disj User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work1->Id0 + Work2->Id0
no source
}}}
}

run test92

pred test93{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1: Work {
User = User0 + User1
profile = User1->Work1
visible = User0->Work0 + User1->Work0 + User1->Work1
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1
ids = Work0->Id1 + Work1->Id0 + Work1->Id1
source = Work0->User0 + Work1->User1
}}}
}

run test93

pred test94{
some disj User1, User0: Source {some disj Id0: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work2
visible = User0->Work1 + User1->Work0 + User1->Work1 + User1->Work2
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work1->Id0
source = Work0->User0 + Work1->User0 + Work2->User1
}}}
}

run test94

pred test95{
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

run test95

pred test96{
some disj User0: Source {some disj Id0, Id1: Id {
User = User0
no profile
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1
no Work
no ids
no source
no Work' --loop state
inv2[]
}}
}

run test96

pred test97{
some disj User0: Source {some disj Id0, Id2, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0
profile = User0->Work0 + User0->Work1 + User0->Work2
no visible
no Institution
no Institution' --loop state
Source = User0
Id = Id0 + Id1 + Id2
Work = Work0 + Work1 + Work2
ids = Work0->Id1 + Work0->Id2 + Work1->Id1 + Work1->Id2 + Work2->Id0
source = Work0->User0 + Work1->User0 + Work2->User0
}}}
}

run test97

pred test98{
some disj User1, User0: Source {some disj Id0, Id1: Id {some disj Work0, Work1, Work2: Work {
User = User0 + User1
profile = User1->Work0 + User1->Work1 + User1->Work2
visible = User0->Work1 + User0->Work2 + User1->Work0
no Institution
no Institution' --loop state
Source = User0 + User1
Id = Id0 + Id1
Work = Work0 + Work1 + Work2
ids = Work0->Id0 + Work0->Id1 + Work1->Id0 + Work1->Id1 + Work2->Id0 + Work2->Id1
source = Work0->User1 + Work1->User1 + Work2->User1
inv2[]
}}}
}

run test98

