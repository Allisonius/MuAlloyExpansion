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
pred inv13[] {
(((((Person)) in Teacher) => (all p2: (one Person) {
((p2->((Person))) !in Tutors)
})) && ((((Person)) in Student) => (all p2: (one Person) {
((((Person))->p2) !in Tutors)
})))
}





