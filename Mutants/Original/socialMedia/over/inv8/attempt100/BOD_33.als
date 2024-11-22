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
(all ad: (one Photo) {
((((u->ad) in sees) => ((ad in Ad) && (ad in (u.posts)))) || (ad in ((u.suggested).posts)))
})
})
}





