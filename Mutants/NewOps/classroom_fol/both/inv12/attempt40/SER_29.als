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
(some z: (one Student) {
((y->(x->z)) in Groups)
})
})
}





