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
(some g: (one Teacher),c: (one Class) {
(((t->c) in Teaches) => ((c->(t->g)) in Groups))
})
})
}





