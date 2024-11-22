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
pred inv14[] {
(some c: (one Class) {
(all s: (one Student) {
(all t: (one Teacher) {
(((c->(t->s)) in Groups) => ((t->s) in Tutors))
})
})
})
}





