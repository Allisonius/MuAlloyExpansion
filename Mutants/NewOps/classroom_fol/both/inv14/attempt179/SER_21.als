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
pred inv14[] {
(all p: (one Person) {
(some c: (one Person),g: (one Group) {
(((c->(p->g)) in Groups) && (some q: (one Person) {
(((q->c) in Teaches) => ((q->p) in Tutors))
}))
})
})
}





