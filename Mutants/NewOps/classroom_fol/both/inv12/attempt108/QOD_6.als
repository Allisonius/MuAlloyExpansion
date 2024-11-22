module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv12[] {
(all t1,t2: (one Teacher) {
((((((Class))->(t1->((Group)))) in Groups) && ((((Class))->(t2->((Group)))) in Groups)) => (t1 = t2))
})
}





