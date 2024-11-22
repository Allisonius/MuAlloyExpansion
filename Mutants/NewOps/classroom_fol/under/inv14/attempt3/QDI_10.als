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
(all c: (one Class),s: (Person + Student),t: (one Teacher) {
(((some (s.(c.Groups))) && ((t->c) in Teaches)) => (t in (s.(^(~Tutors)))))
})
}





