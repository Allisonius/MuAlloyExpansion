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
((some c: (one Class) {
((some s: (one Person) {
(some g: (one Group) {
((c->(s->g)) in Groups)
})
}) && ((((Teacher))->c) in Teaches))
}) && (all c: (one Class) {
(some s: (one Person) {
(some g: (one Group) {
((c->(s->g)) in Groups)
})
})
}))
}





