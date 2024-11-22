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
(one c: (one Class) {
(all s: (one Student) {
(some g: (one Group) {
(g in ((c.Groups).s))
})
})
})
}





