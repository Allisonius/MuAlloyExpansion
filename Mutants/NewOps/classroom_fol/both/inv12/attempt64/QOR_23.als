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
(all x: (one Teacher),y: (one Class) {
(one z: (one Group) {
(((y->(x->z)) in Groups) && ((x->y) in Teaches))
})
})
}





