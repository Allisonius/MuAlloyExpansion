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
(all s: (one Student),c: (one Class) {
((some g: (one Group) {
((c->(s->g)) in Groups)
}) && (all t: (one Teacher) {
(((t->c) = Teaches) => ((t->s) in Tutors))
}))
})
}





