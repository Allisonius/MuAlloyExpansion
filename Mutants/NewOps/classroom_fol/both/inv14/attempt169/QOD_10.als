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
(some g: (one Group) {
(((((Class))->(((Person))->g)) in Groups) => (all t: (one Person) {
(((t->((Class))) in Teaches) => ((t->((Person))) in Tutors))
}))
})
}





