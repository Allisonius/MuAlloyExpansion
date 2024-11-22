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
pred inv11[] {
(all c: (one Class) {
(some t: (one Teacher) {
(((t->c) !in Teaches) => (!(some p: (Person & Teacher),g: (one Group) {
((c->(p->g)) in Groups)
})))
})
})
}





