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
(lone p: (one Person) {
(some q: (one Person),t: (one Teacher) {
(((t->p) in Tutors) || (((q->p) in Tutors) && ((t->q) in Tutors)) || (((t->q) in Tutors) && ((q->p) in Tutors) && ((p->t) in Tutors)))
})
})
}





