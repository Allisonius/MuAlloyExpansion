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
(lone p: (one Person),t: (one Teacher),c: (one Class),g: (one Group) {
((((c->(p->g)) in Groups) && ((t->p) in Teaches)) => ((t->p) in Tutors))
})
}





