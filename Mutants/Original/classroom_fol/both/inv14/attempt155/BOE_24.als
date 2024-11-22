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
(all s: (one Student),g: (one Group) {
(some t: (one Teacher),c: (one Class) {
((((c->(t->g)) in Groups) && (Teaches in (t->c))) => ((t->s) in Tutors))
})
})
}





