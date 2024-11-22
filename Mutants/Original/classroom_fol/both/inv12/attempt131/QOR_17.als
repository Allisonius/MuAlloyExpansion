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
(all s: (one Student) {
(some g: (one Group) {
(one c: (one Class) {
(((t->c) in Teaches) => ((c->(s->g)) in Groups))
})
})
})
})
}





