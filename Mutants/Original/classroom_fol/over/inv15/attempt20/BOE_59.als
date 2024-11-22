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
(all p1: (one Person) {
(some p2,p3: (one Person) {
((p1 != p2) && (p1 != p3) && (p2 != p3) && (all p4: (one Person) {
((p4 = p1) || (p4 = p2) || (p4 = p3))
}) && ((((p2->p1) in Tutors) && (p2 in Teacher)) || ((Tutors in (p3->p2)) && ((p2->p1) in Tutors) && (p3 in Teacher)) || (((p1->p3) in Tutors) && ((p3->p2) in Tutors) && ((p2->p1) in Tutors) && (p1 in Teacher))))
})
})
}





