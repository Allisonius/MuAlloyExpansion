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
(all s: (one Student) {
(some c: (one Class) {
(all t: (one Teacher) {
((Groups in (c->(t->s))) => ((t->s) in Tutors))
})
})
})
}





