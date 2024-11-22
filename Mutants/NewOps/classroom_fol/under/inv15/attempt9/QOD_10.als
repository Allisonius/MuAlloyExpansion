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
(some q,r: (one Person) {
(((q in Teacher) || (r in Teacher)) && (((q->((Person))) in Tutors) || ((r->((Person))) in Tutors) || ((r->q) in Tutors)))
})
}





