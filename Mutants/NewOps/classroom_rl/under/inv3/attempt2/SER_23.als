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
pred inv3[] {
(all p: (one Person) {
((p in Student) => (((p !in Teacher) && (p in Student)) => (p !in Student)))
})
}





