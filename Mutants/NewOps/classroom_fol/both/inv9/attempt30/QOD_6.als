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
pred inv9[] {
(some y,z: (one Teacher) {
((((y->((Class))) in Teaches) && ((z->((Class))) in Teaches)) => (z = y))
})
}





