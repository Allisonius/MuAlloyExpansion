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
(all u: (one (User - Influencer)) {
(one ad: (one Ad) {
((ad in (u.sees)) => ((((u.suggested).posts) in ad) || (ad in ((u.suggested).posts))))
})
})
}





