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
((some t: (one Teacher) {
(all c: (one Class) {
(Teaches in (t->c))
})
}) && (all c: (one Class) {
(all t: (one Teacher) {
((t->c) in Teaches)
})
}))
}





