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
(some p2: (one Person) {
(all p: (one Person) {
(((p->p2) in Tutors) && (p in Teacher))
})
})
}





