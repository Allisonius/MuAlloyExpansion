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
(all p: (one Person) {
(((((Class))->(p->((Group)))) in Groups) => (some q: (one Person) {
(((q->p) in Tutors) && ((q->((Class))) in Teaches))
}))
})
}





