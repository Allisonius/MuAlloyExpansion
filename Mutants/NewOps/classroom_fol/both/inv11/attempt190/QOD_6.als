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
pred inv11[] {
(some t: (one Teacher) {
(((t->((Class))) in Teaches) => (some s: (one Student),g: (one Group) {
((((Class))->(s->g)) in Groups)
}))
})
}





