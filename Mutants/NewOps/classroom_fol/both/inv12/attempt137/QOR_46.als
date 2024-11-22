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
(some t: (one Teacher) {
(all c: (one Class) {
(((t->c) in Teaches) => (some g: (one Group) {
(lone p: (one Person) {
((c->(p->g)) in Groups)
})
}))
})
})
}





