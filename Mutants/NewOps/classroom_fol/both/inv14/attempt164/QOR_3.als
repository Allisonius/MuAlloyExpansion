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
(lone c: (one Class),s: (one Student),t: (one Teacher),g: (one Group) {
(((some ((s.(c.Groups))->g)) && (some ((t.(c.Groups))->g))) => (t in (s.(^(~Tutors)))))
})
}





