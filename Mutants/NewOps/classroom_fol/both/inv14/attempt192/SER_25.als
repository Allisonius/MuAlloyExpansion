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
(no p: (one Person) {
(some c: (one Class),g: (one Person) {
(((c->(p->g)) in Groups) && (some t: (one Teacher) {
(((t->c) in Teaches) && ((p->t) !in Tutors))
}))
})
})
}





