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
(some c: (one Class),t: (one Teacher) {
(all s: (one Student) {
(((s in ((c.Groups).Group)) && ((t->c) in Teaches)) => (t in (s.(^(~Tutors)))))
})
})
}





