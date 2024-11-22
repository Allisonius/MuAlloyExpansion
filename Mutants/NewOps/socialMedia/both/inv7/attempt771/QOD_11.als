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
((((User + Influencer) !in ((User + Influencer).suggested)) && (((User + Influencer).follows) !in ((User + Influencer).suggested))) && (all user1,user2: (one (User + Influencer)) {
((user2 in (user1.suggested)) => (user2 in ((user1.follows).follows)))
}))
}





