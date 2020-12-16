class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'beatmania' },
    { id: 3, name: 'GITADORA' },
    { id: 4, name: 'jubeat' },
    { id: 5, name: 'SOUND VOLTEX' },
    { id: 6, name: '太鼓の達人' },
    { id: 7, name: 'maimai' },
    { id: 8, name: 'グルーブコースター' },
    { id: 9, name: 'Deemo' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :articles

  end
