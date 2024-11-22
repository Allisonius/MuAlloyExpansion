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
(one u: (one User) {
(all ad: (one (u.sees)) {
(all ad_p: (one (ad.posts)) {
((ad_p in (follows.u)) || (ad_p in (suggested.u)))
})
})
})
}





