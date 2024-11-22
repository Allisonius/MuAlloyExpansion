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
pred inv14[] {
(all x: (one Class),y: (one Student) {
((some z: (one Group) {
((x->(y->z)) in Groups)
}) && (one v: (one Teacher) {
(((v->x) in Teaches) => ((v->y) in Tutors))
}))
})
}





