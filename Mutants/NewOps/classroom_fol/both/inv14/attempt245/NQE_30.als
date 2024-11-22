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
(some g: (one Group) {
(some c: (one Class) {
(all s: (one Student) {
(((c->(s->g)) in Groups) && (some t: (one Teacher) {
(((t->c) in Teaches) => ((t->s) in Tutors))
}))
})
})
})
}





