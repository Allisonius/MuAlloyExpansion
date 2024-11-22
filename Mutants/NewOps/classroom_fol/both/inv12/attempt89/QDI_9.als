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
(some x: (one Class),p: (Person & Student),g: (one Group) {
(((x->(p->g)) in Groups) => (lone t: (one Teacher) {
((t->p) in Tutors)
}))
})
}





