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
(some c: (one Class) {
(all s: (one Student),t: (one Teacher) {
(((c->t) in Teaches) => ((t->s) in Tutors))
})
})
}





