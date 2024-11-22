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
(all x: (Person + Student) {
(some y,z: (one Class) {
((((x->y) in Teaches) && ((x->z) in Teaches)) => (y = z))
})
})
}





