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
(some p1,p2: (one Student) {
((((p2->p1) in Tutors) && (p2 in Student)) => (some p3: (one Person) {
((p3->p2) in Tutors)
}))
})
}





