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
(all s: (one Student),g: (one Group) {
((((((Class))->(((Teacher))->g)) in Groups) && ((((Teacher))->((Class))) in Teaches)) => ((((Teacher))->s) in Tutors))
})
}





