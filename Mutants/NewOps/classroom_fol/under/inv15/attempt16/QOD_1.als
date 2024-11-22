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
((((((Person))->q) in Tutors) || ((q->((Person))) in Tutors) || ((((Person))->r) in Tutors) || ((r->((Person))) in Tutors)) => ((((Person)) in Teacher) || (q in Teacher) || (r in Teacher)))
})
}





