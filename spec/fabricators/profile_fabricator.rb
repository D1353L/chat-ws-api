Fabricator(:profile) do
  user
  nickname { FFaker::Internet.user_name }
  first_name { FFaker::Name.first_name }
  last_name { FFaker::Name.last_name }
end
