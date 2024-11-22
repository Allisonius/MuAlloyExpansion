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
((all u: (one User),u2: (one User),p: (one (Photo - Ad)) {
(((u in (sees.p)) && (u2 in (posts.p))) => (u in (follows.u2)))
}) && (all u: (one User) {
(all p: (one (u.sees)) {
(p in ((u.follows).posts))
})
}))
}





