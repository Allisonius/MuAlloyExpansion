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
(some c: (one Class) {
(((some g: (one Group) {
((c->(((Person))->g)) in Groups)
}) && ((((Teacher))->c) in Teaches)) => ((((Teacher))->((Person))) in Tutors))
})
}





