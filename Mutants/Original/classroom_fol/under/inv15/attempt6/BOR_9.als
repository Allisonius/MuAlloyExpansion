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
pred inv15[] {
(all x,y,z: (one Teacher) {
((((x->y) in Tutors) && ((y->z) in Tutors)) => (z != Teacher))
})
}





