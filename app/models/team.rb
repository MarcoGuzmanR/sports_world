class Team
  TEAMS = {
    motorsport: [{ name: 'Red Bull',    titles: 4, active: 'Yes' },
                 { name: 'Mercedes',    titles: 9, active: 'Yes' },
                 { name: 'Force India', titles: 0, active: 'Yes' }],
    basketball: [{ name: 'Bulls',  titles: 11, active: 'Yes' },
                 { name: 'Knicks', titles: 8,  active: 'Yes' },
                 { name: 'Spurs',  titles: 3,  active: 'Yes' }],
    football: [{ name: 'Patriots', titles: 5, active: 'Yes' },
               { name: 'Steelers', titles: 8, active: 'Yes' },
               { name: 'Dolphins', titles: 7, active: 'Yes' }],
    cyclism: [{ name: 'Sky',     titles: 2, active: 'Yes' },
              { name: 'Astana',  titles: 1, active: 'Yes' },
              { name: 'Leopard', titles: 1, active: 'Yes' }]
  }

  def self.return_teams
    TEAMS.keys
  end

  def self.return_properties
    TEAMS[:motorsport].first.keys
  end
end
