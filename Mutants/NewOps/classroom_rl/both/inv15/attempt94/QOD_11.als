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
(((((((Person))->((Person))) in Tutors) && (((Person)) !in Teacher)) => (some p3: (one Person) {
(((p3->((Person))) in Tutors) && (((Person)) != p3))
})) && ((((((Person))->((Person))) in Tutors) && (((Person)) in Teacher)) => (!(some p3: (one Person) {
((p3->((Person))) in Tutors)
}))))
}





