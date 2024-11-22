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
pred inv7[] {
(all s: (one (((User - Influencer).suggested) - Influencer)) {
((s !in ((User - Influencer).follows)) && (some f: (one (((User - Influencer).follows) - Influencer)) {
(s in (f.follows))
}))
})
}





