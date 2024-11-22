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
(some y: (one Class),z: (one Group) {
(all x: (one Teacher) {
((y->(x->z)) in Groups)
})
})
}





