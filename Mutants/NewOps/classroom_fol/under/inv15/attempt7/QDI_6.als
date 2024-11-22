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
(all p: (Person & Teacher) {
(some p1: (one Person) {
(((p->p1) in Tutors) => (p1 in Teacher))
})
})
}





