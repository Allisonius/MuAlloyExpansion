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
(all influencer: (one univ) {
((all user: (one univ) {
((user->influencer) in follows)
}) => (influencer in Influencer))
})
}





