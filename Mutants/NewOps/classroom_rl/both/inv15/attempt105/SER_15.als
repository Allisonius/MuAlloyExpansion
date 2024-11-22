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
((inv3[]) && (all p1,p2: (one Group) {
((((p2->p1) in Tutors) && (p2 !in Teacher)) => (some p3: (one Person) {
((p3->p2) in Tutors)
}))
}) && (all p1,p2: (one Person) {
((((p2->p1) in Tutors) && (p2 in Teacher)) => (!(some p3: (one Person) {
((p3->p2) in Tutors)
})))
}))
}
pred inv3[] {
(!(some p: (one Person) {
((p in Student) && (p in Teacher))
}))
}





