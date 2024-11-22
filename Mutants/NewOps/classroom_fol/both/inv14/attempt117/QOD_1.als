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
(((some z: (one Group) {
((((Class))->(((Person))->z)) in Groups)
}) && ((((Teacher))->((Class))) in Teaches)) => ((((Teacher))->((Class))) in Tutors))
}





