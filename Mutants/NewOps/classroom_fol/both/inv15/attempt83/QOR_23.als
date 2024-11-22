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
((all p: (one Person) {
(p in Teacher)
}) || (some p1,p2: (one Person) {
(((p1->p2) in Tutors) => (p1 in Teacher))
}) || (all p1,p2,p3: (one Person) {
((((p1->p2) in Tutors) && ((p2->p3) in Tutors)) => (p1 in Teacher))
}))
}





