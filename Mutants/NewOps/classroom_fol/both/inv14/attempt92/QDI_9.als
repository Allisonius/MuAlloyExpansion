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
(all s: (Person - Student),c: (one Class) {
((s in ((c.Groups).Group)) => (some t: (one Teacher) {
(((t->c) in Teaches) && (t in (s.(^(~Tutors)))))
}))
})
}





