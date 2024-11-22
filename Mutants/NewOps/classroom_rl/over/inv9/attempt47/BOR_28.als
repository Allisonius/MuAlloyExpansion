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
pred inv9[] {
(all c: (one Class),t,t1: (one Teacher) {
(((t->c) in Teaches) => ((t1->c) = Teaches))
})
}





