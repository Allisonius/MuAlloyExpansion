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
(some g: (one Group) {
(all c: (one Class),s: (one Student),t: (one (Teaches.c)) {
(((c->(s->g)) in Groups) => (s in (t.Tutors)))
})
})
}





