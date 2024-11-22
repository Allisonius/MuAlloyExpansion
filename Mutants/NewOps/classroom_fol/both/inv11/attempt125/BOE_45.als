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
(all x: (one Class) {
(some y: (one Person),z: (one Group),v: (one Teacher) {
((Groups in (x->(y->z))) => ((v->x) in Teaches))
})
})
}





