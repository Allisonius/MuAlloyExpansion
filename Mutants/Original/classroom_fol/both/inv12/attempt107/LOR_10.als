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
pred inv12[] {
(all t: (one Teacher) {
(some c: (one Class),g: (one Group),t0: (one Teacher) {
(((c->(t->g)) in Groups) || ((t0->c) in Teaches))
})
})
}





