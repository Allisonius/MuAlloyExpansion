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
pred inv12[] {
(all p1,p2: (one Person) {
(some c: (one Class) {
(some g: (one Group) {
(((p1 in Teacher) && ((p1->c) in Teaches) && ((p2->g) in (c.Groups))) => ((p1->p2) in Tutors))
})
})
})
}





