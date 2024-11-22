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
(all p: (Person & Student) {
(some g: (one Group) {
(all c: (one Class) {
(((p in Teacher) && (p !in Student)) => ((c->(p->g)) in Groups))
})
})
})
}





