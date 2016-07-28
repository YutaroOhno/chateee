class User < ActiveRecord::Base
  belongs_to :room
  validates_presence_of :nickname

 # validate :add_error_sample
 # 「バリデーションチェックをする時は、add_error_sampleメソッドを参照してね」
  def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if nickname.blank?
      puts "エラー"
    end

  end


end
