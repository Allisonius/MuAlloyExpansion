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
(all u: (one User) {
(one p: (one Ad) {
((u in (sees.p)) => ((posts.p) in ((u.suggested) + (u.follows))))
})
})
}





