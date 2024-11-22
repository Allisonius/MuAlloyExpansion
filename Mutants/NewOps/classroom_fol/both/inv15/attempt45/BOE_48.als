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
((((p->q) in Tutors) && ((q->r) in Tutors)) => ((Teacher in p) || (q in Teacher) || (r in Teacher)))
})
}





