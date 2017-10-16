class User < ActiveRecord::Base
    
    # モデル同士の関連付け
    # Userは複数のmicropostに関連付けられる
    has_many :microposts
    
    # 存在確認
    validates :name, presence: true
    validates :email, presence: true
end
