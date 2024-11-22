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
(all t0,t1: (one Teacher) {
(((((Class))->(t0->((Group)))) in Groups) => ((t1->((Class))) in Teaches))
})
}





