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
(all c: (one Person) {
(some y,z: (one Teacher) {
((((y->c) in Teaches) && ((z->c) in Teaches)) => (z = y))
})
})
}





