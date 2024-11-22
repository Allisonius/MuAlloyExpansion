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
(some t: (one Group) {
(some g: (one Group) {
(some c: (one Class) {
(some p: (one Person) {
(((t->c) in Teaches) && ((c->(p->g)) in Groups))
})
})
})
})
}





