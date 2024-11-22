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
(all user_suggested: (one (((User)).suggested)) {
((user_suggested != ((User))) && (user_suggested !in (((User)).follows)) && (some following: (one (((User)).follows)) {
(user_suggested in (following.follows))
}))
})
}





