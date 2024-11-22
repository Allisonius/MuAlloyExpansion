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
(all t0,t1: (Person & Student) {
(some c: (one Class),g: (one Group) {
(((c->(t0->g)) in Groups) => ((t1->c) in Teaches))
})
})
}





