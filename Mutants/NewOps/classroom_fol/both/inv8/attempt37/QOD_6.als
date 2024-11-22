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
(some t1: (one Teacher),t2: (one Teacher) {
((((t1->((Class))) in Teaches) && ((t2->((Class))) in Teaches)) => (t1 = t2))
})
}





