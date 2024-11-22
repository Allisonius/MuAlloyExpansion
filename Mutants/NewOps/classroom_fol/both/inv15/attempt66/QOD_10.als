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
pred inv15[] {
(all c: (one Class) {
(all g: (one Group) {
(((c->(((Person))->g)) in Groups) => (all t: (one Teacher) {
(((t->c) in Teaches) => ((t->((Person))) in Tutors))
}))
})
})
}





