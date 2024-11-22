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
(all s: (one Student),c: (one Class) {
((some (s.(c.Groups))) => (some t: (one Teacher) {
(((t->c) in Tutors) && (t in (s.(~Tutors))))
}))
})
}





