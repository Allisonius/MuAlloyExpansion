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
(((((((Teacher))->((Class))) in Teaches) && ((((Teacher))->((Class))) in Teaches)) => (((Teacher)) = ((Teacher)))) || (!((((Teacher))->((Class))) in Teaches)) || (!((((Teacher))->((Class))) in Teaches)))
}





