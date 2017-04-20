class Parent < User
  has_many :alumns, autosave: true
end
