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
(all t: (one Teacher) {
(((t->((Class))) in Teaches) => (all s: (one Student),g: (one Group) {
((((Class))->(s->g)) in Groups)
}))
})
}





