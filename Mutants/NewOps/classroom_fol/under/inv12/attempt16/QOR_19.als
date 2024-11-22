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
(one c: (one Class) {
(((t->c) in Teaches) => (some s: (one Person),g: (one Group) {
((c->(s->g)) in Groups)
}))
})
})
}





