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
pred inv15[] {
(some p,q,r: (one Person) {
(((((p->q) in Tutors) || ((q->p) in Tutors)) && (((q->r) in Tutors) || ((r->q) in Tutors))) => ((p in Teacher) || (q in Teacher) || (r in Student)))
})
}





