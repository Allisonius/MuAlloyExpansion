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
(some c: (one Teacher) {
(some g: (one Group) {
(all p: (one Student) {
(((t->c) in Teaches) => ((c->(p->g)) in Groups))
})
})
})
})
}





