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
(one t: (one Teacher) {
(some x: (one Class) {
(((t->x) in Teaches) => (some g: (one Group) {
((x->(t->g)) in Groups)
}))
})
})
}





