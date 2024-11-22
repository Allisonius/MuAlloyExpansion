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
(all x: (one Person),y: (one Class),v: (one Teacher) {
((some z: (one Teacher) {
((y->(x->z)) in Groups)
}) && ((v->y) in Teaches))
})
}





