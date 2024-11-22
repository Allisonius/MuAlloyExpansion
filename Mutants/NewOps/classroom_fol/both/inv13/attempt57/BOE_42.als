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
(some p1: (one Person),p2: (one Person) {
(((p1->p2) in Tutors) <=> ((Teacher in p1) && (p2 in Student)))
})
}





