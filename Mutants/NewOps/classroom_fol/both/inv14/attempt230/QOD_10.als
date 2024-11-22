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
(some y: (one Class) {
((some z: (one Group) {
((y->(((Person))->z)) in Groups)
}) => (all u: (one Teacher) {
(((u->y) in Teaches) && ((u->((Person))) in Tutors))
}))
})
}





