class Contact < ApplicationRecord
  enum title: %i(  service relationship job other )
  enum status: %i( yet done )
  
  #new_record?はDBにレコードが登録されていなければtrue,登録されていればfalseとなる
  #active recordではモデルが特定の動作をする際にコールバックを設定することができる
  after_initialize :set_default, if: :new_record?
  
  #||=は自己代入演算子、何も入っていなければ代入する
  def set_default
    self.status ||= :yet
  end
end
