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
(some q: (one Person),t: (one Teacher) {
(((t->((Person))) in Tutors) || (((q->((Person))) in Tutors) && ((t->q) in Tutors)) || (((t->q) in Tutors) && ((q->((Person))) in Tutors) && ((((Person))->t) in Tutors)))
})
}





