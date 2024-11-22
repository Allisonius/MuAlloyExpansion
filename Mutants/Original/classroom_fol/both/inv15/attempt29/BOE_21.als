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
(some p1,p2,p3: (one Person) {
(((p1->p2) in Tutors) && (Tutors in (p2->p3)) && (p1 in Teacher))
})
}





