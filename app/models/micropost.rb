class Micropost < ActiveRecord::Base
    # バリデート
    # 文字数を制限する, 空を許可しない。
    validates :content, length: { maximum: 140 }, presence: true
    
    # モデル同士の関連付け
    # Micropostは1つのユーザに関連付けられる
    belongs_to :user
end
