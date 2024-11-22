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
((((((Teacher))->((Class))) in Teaches) && ((((Class))->(((Person))->((Group)))) in Groups)) => ((((Teacher))->((Person))) in Tutors))
}





