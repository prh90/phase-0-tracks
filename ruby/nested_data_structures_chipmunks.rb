=begin
  I decided to make a structure using myself
=end

pablo = {
  personal: {
    year_born: '1990',
    nickname: [
      'chin',
      'tiburon',
      'junior'
      ],
    achievements: {
      senate_recognition: 1,
      year_grad: 2008
    }
  },
  aspirations: {
    job: 'Computer Programmer',
    languages_I_like: [
      'Ruby',
      'C++'
      ]
  },
  problems: {
    language: 'Ruby',
    reasons: {
      level: 6,
      total_levels: 10
    }
  },
  work: {
    future_work: [
      'Google',
      'Microsoft',
      'Apple',
    ],
    total_jobs: {
      number_of_potential_suitors: 4
    }
  }
}

# pablo[:personal][:achievements][:year_grad]
# => 2008

# pablo[:personal][:nickname][1]
# => "tiburon"

#  pablo[:aspirations][:job]
# => "Computer Programmer"

# pablo[:work][:future_work]
# => ["Google", "Microsoft", "Apple"]

#  pablo[:work][:future_work].push("Northrop Grumman")
# => ["Google", "Microsoft", "Apple", "Northrop Grumman"]