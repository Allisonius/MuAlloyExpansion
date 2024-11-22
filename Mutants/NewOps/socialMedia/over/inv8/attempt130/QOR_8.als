module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
((some u: (one User) {
(((u.sees) & Ad) in (((u.follows).posts) & Ad))
}) && (all u: (one User) {
(((u.sees) & Ad) in (((u.suggested).posts) & Ad))
}) && (all a: (one Ad) {
(all u: (one User) {
(((u->a) in sees) => (some z: (one User) {
((((u->z) in follows) || ((u->z) in suggested)) && ((z->a) in posts))
}))
})
}))
}





