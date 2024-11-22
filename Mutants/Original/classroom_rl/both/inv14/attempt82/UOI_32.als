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
(all c: (one Class),t: (one Teacher) {
(((t->c) in Teaches) => (all s: (one Student) {
(((c->(s->Group)) in Groups) => (s in (t.(*(Tutors :> Student)))))
}))
})
}





