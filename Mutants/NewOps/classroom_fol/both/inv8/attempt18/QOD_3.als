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
(all x: (one Teacher) {
((((x->((Class))) in Teaches) && ((x->((Class))) in Teaches)) => (((Class)) = ((Class))))
})
}





