=begin
  I decided to make a structure using my favorite
  soccer team as a model, Chivas de Guadalajara
=end

chivas = {
  franchise: {
    year_founded: '1906',
    nickname: [
      'Rebano Sagrado',
      'Chiverio',
      'Campeonisimo',
      'El mas mexicano'
      ],
    achievements: {
      league_titles: 11,
      cup_titles: 3
    }
  },
  owner: {
    name: 'Jorge Vergara',
    f_owned: [
      'Chivas de Guadalajara',
      'Omnilife'
      ]
  },
  manager: {
    name: 'Matias Almeyda',
    t_man: {
      total_teams_managed: 3,
      trophies: 1,
      teams_played: 9
    }
  },
  squad: {
    notable_players: [
      'Alan Pulido',
      'Orbelin Pineda',
      'Carlos Pena',
      'Eduardo Lopez'
      ],
    total_players: {
      number_of_players: 25
      }
    }
}

# chivas[:franchise][:achievements][:cup_titles]
# => 11

# chivas[:owner][:f_owned][1]
# => "Omnilife"

# chivas[:manager][:t_man][:total_teams_managed]
# => 3

# chivas[:squad][:notable_players]
# => ["Alan Pulido", "Orbelin Pineda", "Carlos Pena", "Eduardo Lopez"]

# chivas[:squad][:notable_players].push("Rodolfo Cota")
# => ["Alan Pulido", "Orbelin Pineda", "Carlos Pena", "Eduardo Lopez", "Rodolfo Cota"]