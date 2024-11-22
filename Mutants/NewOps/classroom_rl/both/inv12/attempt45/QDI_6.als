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
(all p: (Person - Teacher) {
(some g: (one Group) {
(all c: (one Class) {
((p in Teacher) => ((c->(p->g)) in Groups))
})
})
})
}





