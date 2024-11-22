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
pred inv13[] {
(all p: (one Group) {
(((p in Teacher) => (all p2: (one Person) {
((p2->p) !in Tutors)
})) && ((p in Student) => (all p2: (one Person) {
((p->p2) !in Tutors)
})))
})
}





