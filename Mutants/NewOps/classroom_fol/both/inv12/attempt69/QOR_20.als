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
(all t: (one Teacher) {
((no x: (one Class) {
((t->x) in Teaches)
}) => (some g: (one Group) {
((t->g) in Tutors)
}))
})
}





