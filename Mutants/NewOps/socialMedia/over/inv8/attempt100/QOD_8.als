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
(all ad: (one Photo) {
((((((User))->ad) in sees) => ((ad in Ad) && (ad in ((((User)).follows).posts)))) || (ad in ((((User)).suggested).posts)))
})
}





