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
pred inv4[] {
(all p: (one Person) {
((p != Student) || ((p in Teacher) && (inv3[])))
})
}
pred inv3[] {
(all p: (one Person) {
((p in Student) => (p !in Teacher))
})
}





