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
pred inv11[] {
(lone c: (one Class) {
(some t: (one Teacher) {
((some ((c.Groups).t)) => (c in (t.Teaches)))
})
})
}





