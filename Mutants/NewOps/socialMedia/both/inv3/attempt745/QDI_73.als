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
pred inv3[] {
((all p: (one Photo) {
(all u: (one User) {
((p in (u.sees)) => (p !in (u.posts)))
})
}) && (all a: (one Ad) {
(all u: (one User) {
((a in (u.sees)) => (a !in (u.posts)))
})
}) && (all p: (Photo & Ad) {
(all u: (one User),u2: (one User) {
(((p in (u.sees)) && (p in (u2.posts)) && (p != Ad)) => (u2 in (u.follows)))
})
}))
}





