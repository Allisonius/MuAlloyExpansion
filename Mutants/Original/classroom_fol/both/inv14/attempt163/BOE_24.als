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
(all s: (one Student),c: (one Class),t: (one Teacher) {
(all g: (one Group) {
((((c->(s->g)) in Groups) && (Groups in (c->(t->g)))) => ((t->s) in Tutors))
})
})
}





