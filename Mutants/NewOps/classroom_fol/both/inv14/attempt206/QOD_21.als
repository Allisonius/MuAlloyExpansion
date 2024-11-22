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
(all s: (one Student) {
(((((Class))->(s->((Group)))) in Groups) => (some t: (one Teacher) {
(((t->((Class))) in Teaches) && ((t->s) in Tutors))
}))
})
}





