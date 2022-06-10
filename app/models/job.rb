class Job < ActiveHash::Base
  self.data = [
    { id: 1, name: '職業を選択して下さい' },
    { id: 2, name: '公務員' },
    { id: 3, name: '経営者・役員' },
    { id: 4, name: '会社員（事務系）' },
    { id: 5, name: '会社員（技術系）' },
    { id: 6, name: '会社員（その他）' },
    { id: 7, name: '自営業' },
    { id: 8, name: '自由業' },
    { id: 9, name: '専業主婦（主夫）' },
    { id: 10, name: 'パート・アルバイト' },
    { id: 11, name: '学生' },
    { id: 12, name: '無職' },
    { id: 13, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
