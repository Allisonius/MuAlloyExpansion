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
(all t: (one Teacher),p: (one Person) {
(some c: (one Class),g: (one Group) {
(((t->p) in Tutors) => (((t->c) in Tutors) && ((c->(p->g)) in Groups)))
})
})
}





