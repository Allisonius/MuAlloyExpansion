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
(all t: (one Teacher) {
(some c1,c2: (one Teacher),g1,g2: (one Group) {
(((c1->(t->g1)) in Groups) && ((c2->(t->g2)) in Groups))
})
})
}





