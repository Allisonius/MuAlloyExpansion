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
pred inv15[] {
(all c: (one Class) {
(all g: (one Group) {
((((c->(((Person))->g)) in Groups) && ((c->(((Person))->g)) in Groups) && ((((Person))->c) in Teaches)) => (((((Person))->((Person))) in Tutors) && ((((Person))->((Person))) in Tutors)))
})
})
}





