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
(all t1: (Person + Student) {
(some t: (one Teacher) {
(((t1->t) in Tutors) || ((t1->t) in (Tutors.Tutors)))
})
})
}





