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
(((((User - Influencer) in (((User - Influencer).follows).follows)) && ((User - Influencer) !in ((User - Influencer).follows)) && ((User - Influencer) !in Influencer)) => ((User - Influencer) in ((User - Influencer).suggested))) && (all u: (one User) {
(u !in (u.suggested))
}) && (all i: (one Influencer),u: (one User) {
(i !in (u.suggested))
}))
}





