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
pred inv1[] {
(all p: (one Photo) {
(all i: (one Influencer) {
(((p in (((User)).posts)) && (p in (((User)).posts))) => ((((User)) = ((User))) && (i = ((User)))))
})
})
}





