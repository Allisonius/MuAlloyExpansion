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
(all p1: (one Person) {
((p1 != ((Person))) && (p1 != ((Person))) && (((Person)) != ((Person))) && (all p4: (one Person) {
((p4 = p1) || (p4 = ((Person))) || (p4 = ((Person))))
}) && ((((((Person))->p1) in Tutors) && (((Person)) in Teacher)) || (((((Person))->((Person))) in Tutors) && ((((Person))->p1) in Tutors) && (((Person)) in Teacher)) || (((p1->((Person))) in Tutors) && ((((Person))->((Person))) in Tutors) && ((((Person))->p1) in Tutors) && (p1 in Teacher))))
})
}





