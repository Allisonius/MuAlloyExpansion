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
(all p: (one Person),t: (one Teacher) {
(some c: (one Class) {
(((some g: (one Group) {
((c->(p->g)) = Groups)
}) && ((t->c) in Teaches)) => ((p->t) in Tutors))
})
})
}





