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
pred inv10[] {
(all c: (one Class) {
(all g: (one Group) {
((((Person)) in Student) => ((((Person))->g) in (c.Groups)))
})
})
}





