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
(all g: (one Group) {
((((((Class))->(((Student))->g)) in Groups) && ((((Teacher))->((Class))) in Teaches)) => ((((Teacher))->((Student))) in Tutors))
})
}





