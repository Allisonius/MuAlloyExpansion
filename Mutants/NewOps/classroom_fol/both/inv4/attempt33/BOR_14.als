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
pred inv4[] {
((always (all s: (one Student) {
(s in Teacher)
})) && (always (all t: (one Teacher) {
(t !in Student)
})))
}





