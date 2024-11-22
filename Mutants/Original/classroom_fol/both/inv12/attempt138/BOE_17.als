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
(some c: (one Class) {
((Teaches in (t->c)) => (some g: (one Group) {
(all s: (one Student) {
((c->(s->g)) in Groups)
})
}))
})
})
}





