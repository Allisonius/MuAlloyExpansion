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
(some x: (one Teacher) {
(some y: (one Class),z: (one Group) {
((y->(x->z)) in Groups)
})
})
}





