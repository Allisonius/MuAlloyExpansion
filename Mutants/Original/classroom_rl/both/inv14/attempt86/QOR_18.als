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
(all p: (one Person),c: (one Class) {
(some g: (one Group) {
(((c->(p->g)) in Groups) => (all t: (one Teacher) {
(((t->c) in Teaches) => ((t->p) in Tutors))
}))
})
})
}





