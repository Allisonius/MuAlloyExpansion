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
(some y: (one Class) {
((some z: (one Group) {
((y->(x->z)) in Groups)
}) => (all u: (one Teacher) {
(((u->y) in Teaches) || ((u->x) in Tutors))
}))
})
})
}





