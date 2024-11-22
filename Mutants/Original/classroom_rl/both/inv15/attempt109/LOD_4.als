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
(inv13[])
}
pred inv13[] {
(all p1,p2: (one Person) {
(((p1->p2) in Tutors) => ((p1 in Teacher) && (p2 in Student)))
})
}
pred inv1[] {
(all p: (one Person) {
(p in Student)
})
}





