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
(one g: (one Group) {
(all p: (one Person) {
(all c: (one Class) {
((p in Student) => ((p->g) in (c.Groups)))
})
})
})
}





