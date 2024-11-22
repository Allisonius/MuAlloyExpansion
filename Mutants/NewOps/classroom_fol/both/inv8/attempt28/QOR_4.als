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
pred inv8[] {
(one t1,t2: (one Teacher) {
(some c1: (one Class) {
((((t1->c1) in Teaches) && ((t2->c1) in Teaches)) => (t1 = t2))
})
})
}





