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
(all p: (one Person),c: (one Class) {
(some g: (one Group) {
((p in Class) => ((c->(p->g)) in Groups))
})
})
}





