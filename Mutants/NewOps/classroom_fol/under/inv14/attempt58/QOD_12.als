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
((((((Class))->(((Person))->((Group)))) in Groups) && (((Person)) in Teacher) && (((Person)) in Student) && ((((Person))->((Class))) in Teaches)) => ((((Person))->((Person))) in Tutors))
}





