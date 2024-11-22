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
(all t: (one Person) {
(some c: (one Teacher) {
(((t->c) in Teaches) && (some g: (one Group) {
(some s: (one Person) {
((c->(s->g)) in Groups)
})
}))
})
})
}





