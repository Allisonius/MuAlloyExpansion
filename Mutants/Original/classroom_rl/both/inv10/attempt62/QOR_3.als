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
(lone c: (one Class) {
(all s: (one Student) {
(all g: (one Group) {
((s->g) in (c.Groups))
})
})
})
}





