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
((all a: (Ad - Photo) {
(all u,u2: (one User) {
((a in (u2.posts)) && (u2 in (u.follows)))
})
}) && (all u: (one User) {
(all p: (one Photo) {
((p in (u.sees)) => (p !in (u.posts)))
})
}))
}





