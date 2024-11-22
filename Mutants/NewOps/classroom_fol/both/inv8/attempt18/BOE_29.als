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
pred inv8[] {
(all x: (one Teacher) {
(some y,z: (one Class) {
((y = z) => (((x->y) in Teaches) && ((x->z) in Teaches)))
})
})
}





