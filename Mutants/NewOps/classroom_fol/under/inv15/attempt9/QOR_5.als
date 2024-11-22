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
(some p: (one Person) {
(some q,r: (one Person) {
(((q in Teacher) || (r in Teacher)) && (((q->p) in Tutors) || ((r->p) in Tutors) || ((r->q) in Tutors)))
})
})
}





