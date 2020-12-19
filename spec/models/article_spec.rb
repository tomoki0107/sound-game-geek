require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe '投稿の保存' do
    context '投稿が保存できる場合' do
      it '全てのカラムが存在すれば保存できる' do
        expect(@article).to be_valid
      end
    end

    context '投稿が保存できない場合' do
      it '画像がないと保存できない' do
        @article.image = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Image can't be blank")
      end
      it 'タイトルがないと保存できない' do
        @article.title = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Title can't be blank")
      end
      it '商品の説明がないと保存できない' do
        @article.info = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Info can't be blank")
      end
      it 'カテゴリーの情報がないと保存できない' do
        @article.category_id = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Category Select")
      end
    end


  end
end
