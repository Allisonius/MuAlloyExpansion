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
(some g: (one Group),c: (one Class) {
((((c->(((Student))->g)) in Groups) && ((((Teacher))->c) in Teaches)) => ((((Teacher))->((Student))) in Tutors))
})
}





