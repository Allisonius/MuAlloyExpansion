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
(some c: (one Class),g: (one Group),s: (Person + Teacher) {
(((t->s) in Teaches) => ((c->(g->s)) in Groups))
})
})
}





