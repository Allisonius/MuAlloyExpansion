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
pred inv14[] {
(some t: (one Person) {
((((((Class))->(((Person))->((Group)))) in Groups) && (t in Teacher) && (((Person)) in Student) && ((t->((Class))) in Teaches)) => ((t->((Person))) in Tutors))
})
}





