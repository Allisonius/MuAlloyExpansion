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
pred inv14[] {
(all p1,p2: (one Person) {
(some g: (one Group),c: (one Group) {
(((c->(p1->g)) in Groups) && ((p2->c) in Teaches) && ((p2->p1) in Tutors))
})
})
}





