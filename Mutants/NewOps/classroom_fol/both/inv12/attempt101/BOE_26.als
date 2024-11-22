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
(some x: (one Class),p: (one Person),g: (one Group) {
((lone t: (one Teacher) {
((t->x) in Teaches)
}) => ((x->(p->g)) in Groups))
})
}





