class Player
  PLAYERS = {
    motorsport: [{ name: 'Sebastian Vettel',   team: 'Red Bull', active: 'Yes' },
                 { name: 'Alain Prost',        team: 'Mercedes', active: 'No' },
                 { name: 'Michael Schumacher', team: 'Ferrari',  active: 'No' }],
    basketball: [{ name: 'Michael Jordan', team: 'Bulls',  active: 'No' },
                 { name: 'Kobe Bryant',    team: 'Lakers', active: 'Yes' },
                 { name: 'Karl Malone',    team: 'Jazz',   active: 'No' }],
    football: [{ name: 'Tom Brady',      team: 'Patriots', active: 'Yes' },
               { name: 'Peyton Manning', team: 'Broncos',  active: 'Yes' },
               { name: 'Drew Brees',     team: 'Saints',   active: 'Yes' }],
    cyclism: [{ name: 'Bradley Wiggins',    team: 'Sky',    active: 'Yes' },
              { name: 'Vincenzo Nibali',    team: 'Astana', active: 'Yes' },
              { name: 'Christopher Froome', team: 'Sky',    active: 'Yes' }]
  }

  def self.return_sports
    PLAYERS.keys
  end

  def self.return_properties
    PLAYERS[:motorsport].first.keys
  end
end
