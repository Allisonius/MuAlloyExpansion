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
(all s: (one Student),c: (one Class),g: (one Group) {
(some t: (one Teacher) {
(((t->s) in Teaches) => (((t->c) in Teaches) && ((c->(s->g)) in Groups)))
})
})
}





