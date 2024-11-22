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
(some y,z: (one Class) {
((((((Teacher))->y) in Teaches) && ((((Teacher))->z) in Teaches)) => (y = z))
})
}





