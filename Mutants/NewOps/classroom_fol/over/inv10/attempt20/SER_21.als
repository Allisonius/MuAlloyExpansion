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
(all s: (one Person) {
(some g: (one Group) {
(((s->g)->c) in Groups)
})
})
})
}





