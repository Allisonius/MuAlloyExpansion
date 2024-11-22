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
(all p1: (one Person) {
((isTutored[p1]) => (p1 in Teacher))
})
}
pred isTutored[p1: Person] {
(some p2: (one Person) {
((p1->p2) in Tutors)
})
}





