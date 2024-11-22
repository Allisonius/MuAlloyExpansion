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
pred inv9[] {
(some t,x: (one Teacher) {
((((t->((Class))) in Teaches) && ((x->((Class))) in Teaches)) => (t = x))
})
}





