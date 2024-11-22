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
(all ps: (one Person),t: (one Teacher) {
(all c: (one Class),g: (one Group) {
((((c->(ps->g)) in Groups) && ((t->c) in Tutors)) => ((t->ps) in Tutors))
})
})
}





