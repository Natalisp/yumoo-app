def make_seeds
  make_puns
end

def make_puns
  Pun.destroy_all
  Pun.create(content: 'Looking to grab some nuts? Why nut? Climb a tree? Yes?Yes?Yes?Yes! God help us...', mood_id: 1)
  Pun.create(content: "It's coffee O'clock in Jitterburg!", mood_id: 1)
  Pun.create(content: "It's grape to see you!", mood_id: 2)
  Pun.create(content: "Go against the grain. Ferment it.", mood_id: 2)
  Pun.create(content: "You live in Seattle?", mood_id: 3)
  Pun.create(content: "Last cup of tomorrow.", mood_id: 3)
  Pun.create(content: "Getting guilty with it.", mood_id: 4)
  Pun.create(content: "Orange you glad it's dipped in chocolate?", mood_id: 4)
  Pun.create(content: "To bee or not to bee, Honey?", mood_id: 5)
  Pun.create(content: "You like it Beetless? Try Strawberry Salads Forever.", mood_id: 5)
  Pun.create(content: "I'm partial to render.", mood_id: 6)
  Pun.create(content: "Sticking with it requires True Grits", mood_id: 6)
  Pun.create(content: "I'm partial to render.", mood_id: 7)
  Pun.create(content: "Sticking with it requires True Grits", mood_id: 7)
  Pun.create(content: 'Looking to grab some nuts? Why nut? Climb a tree? Yes?Yes?Yes?Yes! God help us...', mood_id: 8)
  Pun.create(content: "It's coffee O'clock in Jitterburg!", mood_id: 8)
  Pun.create(content: 'Underpaid? Pry me a river!', mood_id: 9)
  Pun.create(content: 'Desserts? Byte me!', mood_id: 9)
  Pun.create(content: 'Is that thunder or are you hungry to see me?', mood_id: 10)
  Pun.create(content: 'Never again said no student ever.', mood_id: 11)
  Pun.create(content: 'Wilt not, buttercup.', mood_id: 12)
  Pun.create(content: "Don't be so shellfish!", mood_id: 13)
  Pun.create(content: "Republican rallies: now with white whine.", mood_id: 14)
  Pun.create(content: "Caviar, hmmpf! That's just a fancy name for fish eggs.", mood_id: 15)
  Pun.create(content: 'Zzzzzzeppole...', mood_id: 16)
  Pun.create(content: 'Underpaid? Pry me a river!', mood_id: 17)
  Pun.create(content: 'Desserts? Byte me!', mood_id: 17)
  Pun.create(content: 'Let it go, let it goooooo....', mood_id: 18)

end
make_seeds
