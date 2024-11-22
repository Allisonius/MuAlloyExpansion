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
(all p,q,r: (one Person) {
((((p->q) in Tutors) || ((q->p) in Tutors) || ((q->r) in Tutors) || ((r->q) != Tutors) || ((r->p) in Tutors) || ((p->r) in Tutors)) => ((p in Teacher) || (q in Teacher) || (r in Teacher)))
})
}





