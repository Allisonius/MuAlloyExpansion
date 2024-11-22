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
pred inv15[] {
(some t: (one Teacher) {
(all t1: (one Teacher) {
(((t1->t) in Tutors) || ((t1->t) in (Tutors.Tutors)))
})
})
}





