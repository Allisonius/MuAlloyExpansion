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
(all u: (one User) {
(all p: (one ((u.follows).suggested)) {
(all ad: (one Ad) {
((p in (u.sees)) && (ad in (u.sees)))
})
})
})
}





