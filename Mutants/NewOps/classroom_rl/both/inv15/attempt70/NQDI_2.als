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
(all t1: (one Teacher) {
(some t: (one Teacher) {t != t1 =>  {t != t1 =>  {
(((t1->t) in Tutors) || ((t1->t) in (Tutors.Tutors)))
}}})
})
}





