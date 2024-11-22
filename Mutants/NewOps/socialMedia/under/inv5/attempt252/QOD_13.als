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
pred inv5[] {
(((((User)) != ((Influencer))) => ((((User))->((Influencer))) in follows)) && (all infl: (one Influencer) {
(some u: (one User) {
(((u->infl) in follows) => (u !in Influencer))
})
}))
}





