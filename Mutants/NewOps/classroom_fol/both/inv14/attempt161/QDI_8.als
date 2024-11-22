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
(all ps: (Person - Student),t: (one Teacher) {
(some c: (one Class),g: (one Group) {
((((c->(ps->g)) in Groups) && ((t->c) in Teaches)) => ((t->ps) in Tutors))
})
})
}





