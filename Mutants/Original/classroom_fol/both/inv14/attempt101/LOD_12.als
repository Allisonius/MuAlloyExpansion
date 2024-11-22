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
(all p: (one Student) {
(some c: (one Class),g: (one Group),t: (one Teacher) {
(((c->(p->g)) in Groups) && ((t->p) in Tutors))
})
})
}





