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
(some p1,p2: (one Person) {
((Tutors in (p1->p2)) => ((p2 in Teacher) && (p1 in Student)))
})
}





