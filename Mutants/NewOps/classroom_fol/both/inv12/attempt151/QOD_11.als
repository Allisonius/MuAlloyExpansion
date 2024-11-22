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
pred inv12[] {
(some c: (one Class) {
(some g: (one Group) {
(((((Person))->((Person))) in Tutors) => ((((Person)) in Teacher) && ((((Person))->c) in Teaches) && ((((Person))->g) in (c.Groups))))
})
})
}





