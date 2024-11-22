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
(all u: (one User),v: (one User),p: (one Photo) {
((((p in Ad) && (u in (sees.p)) && (v !in (posts.p))) => (u in (follows.v))) || (u in (suggested.v)))
})
}





