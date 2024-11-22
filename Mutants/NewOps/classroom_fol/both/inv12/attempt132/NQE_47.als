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
(some c: (one Class) {
(all s: (one Student) {
(some g: (one Group) {
(all t: (one Teacher) {
(((t->c) in Teaches) && ((c->(t->g)) in Groups))
})
})
})
})
}





