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
(all user: (one (User.suggested)) {
((user in ((User.follows).follows)) && (user !in (Influencer.suggested)) && ((user.suggested) !in (user.follows)))
})
}





