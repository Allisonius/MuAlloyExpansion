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
(all ad: (one (Photo - (u.sees))) {
(all f: (one (u.follows)) {
(all s: (one (u.suggested)) {
((ad in (f.posts)) || ((ad in (s.posts)) && (ad !in (u.posts))))
})
})
})
})
}





