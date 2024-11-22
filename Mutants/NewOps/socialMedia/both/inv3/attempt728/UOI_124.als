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
(((p in (u.sees)) && (p !in Ad)) => (p !in (u.posts)))
})
}) && (all p: (one Photo) {
(all u: (one User),u2: (one User) {
(((u != u2) && (p in (u.sees)) && (p in (u2.posts)) && (p !in Ad)) => (u2 in (u.(*follows))))
})
}))
}





