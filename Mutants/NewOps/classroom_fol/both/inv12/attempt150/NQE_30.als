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
(some g: (one Group) {
(some c: (one Class) {
(all t: (one Teacher) {
(all p: (one Person) {
(((t->c) in Teaches) => (((c->(p->g)) in Groups) && (p in Student)))
})
})
})
})
}





