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
((((((Teacher))->((Class))) in Teaches) && (one (((Student)).(((Class)).Groups))) && (one (((Teacher)).(((Class)).Groups)))) => (((Teacher)) in (((Student)).(~Tutors))))
}





