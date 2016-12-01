Event.destroy_all
event_attributes = [
  {
    title:         "Event Gastro au Bristol",
    subtitle:      "Taste delightful food by top chefs",
    description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",

  },
  {
    title:         "Food Seminar",
    subtitle:      "Mongolian yak milk tasting and promotion",
    description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",

  },
  {
   title:         "Party",
    subtitle:      "Bob's birthday",
    description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",

  }
]
event_attributes.each { |params| Event.create!(params) }