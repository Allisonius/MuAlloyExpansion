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
(all p1: (one Teacher) {
((p1 in Teacher) || (some p2: (one Person) {
((p2 != p1) && ((p2->p1) in Tutors) && ((p2 in Teacher) || (some p3: (one Person) {
((p3 != p2) && (p3 != p1) && (p3 in Teacher))
})))
}))
})
}





