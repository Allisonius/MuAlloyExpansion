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
((((((Class))->(((Student))->((Group)))) in Groups) && ((t->((Class))) in Teaches) && (t in Teacher)) => ((t->((Student))) in Tutors))
})
}





