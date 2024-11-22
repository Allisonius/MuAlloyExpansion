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
pred inv10[] {
(all c: (one Teacher) {
(all p: (one Person) {
(all g: (one Group) {
((p in Student) => ((p->g) in (c.Groups)))
})
})
})
}





