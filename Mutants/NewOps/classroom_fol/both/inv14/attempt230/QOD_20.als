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
(all x: (one Person) {
((some z: (one Group) {
((((Class))->(x->z)) in Groups)
}) => (all u: (one Teacher) {
(((u->((Class))) in Teaches) && ((u->x) in Tutors))
}))
})
}





