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
(all p: (one Person) {
((((p->((Person))) in Tutors) || ((((Person))->p) in Tutors) || ((((Person))->((Person))) in Tutors) || ((((Person))->((Person))) in Tutors) || ((((Person))->p) in Tutors) || ((p->((Person))) in Tutors)) => ((p in Teacher) || (((Person)) in Teacher) || (((Person)) in Teacher)))
})
}





