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
pred inv12[] {
(all t: (one Person) {
(((t in Teacher) && (((Person)) in Student)) => (((((Class))->(((Person))->((Group)))) in Groups) && ((t->((Class))) in Teaches)))
})
}





