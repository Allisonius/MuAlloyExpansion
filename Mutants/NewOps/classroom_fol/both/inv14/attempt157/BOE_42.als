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
(some c: (one Class),g: (one Group),t: (one Teacher) {
(all s: (one Student) {
(((t->s) in Tutors) => (((c->(s->g)) in Groups) && ((t->c) in Teaches)))
})
})
}





