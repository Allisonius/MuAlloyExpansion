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
(all c: (one Class),t: (one (Teaches.c)) {
(all s: (one Student) {
(lone g: (one Group) {
(((c->(s->g)) in Groups) => (s in (t.Tutors)))
})
})
})
}





