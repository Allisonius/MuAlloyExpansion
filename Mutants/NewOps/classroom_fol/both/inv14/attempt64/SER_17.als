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
(all c: (one Person),s: (one Student),t: (one Teacher) {
(((some (s.(c.Groups))) && (some (t.(c.Groups)))) => (t in (s.(^(~Tutors)))))
})
}





