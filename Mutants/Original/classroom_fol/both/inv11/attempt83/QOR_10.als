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
pred inv11[] {
(some x: (one Class) {
(some y: (one Person) {
(all g: (one Group) {
(((x->(y->g)) in Groups) => (y in Teacher))
})
})
})
}





