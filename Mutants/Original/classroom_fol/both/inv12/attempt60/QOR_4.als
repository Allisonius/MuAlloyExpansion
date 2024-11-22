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
(one p: (one Person),c: (one Class) {
(some g: (one Group) {
((p in Teacher) => ((c->(p->g)) in Groups))
})
})
}





