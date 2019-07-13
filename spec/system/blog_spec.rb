require 'rails_helper'

RSpec.describe 'Blog', type: :system do
  let(:blog) { create(:blog) }

  describe 'Blog一覧' do
    context '正常系' do
      it 'Blogが表示されること' do; end
    end
  end

  describe 'Blog新規作成' do
    context '正常系' do
      it 'Blogが新規作成されること' do; end
    end

    context '異常系' do
      it 'Titleが未入力の場合、Blogが新規作成されないこと' do; end
      it 'Contentが未入力の場合、Blogが新規作成されないこと' do; end
    end
  end

  describe 'Blog詳細' do
    context '正常系' do
      it 'Blogが表示されること' do; end
    end
  end

  describe 'Blog編集' do
    context '正常系' do
      it 'Blogが編集されること' do; end
    end

    context '異常系' do
      it 'Titleが未入力の場合、Blogが編集されないこと' do; end
      it 'Contentが未入力の場合、Blogが編集されないこと' do; end
    end
  end

  describe 'Blog編集' do
    context '正常系' do
      it 'Blogが編集されること' do; end
    end

    context '異常系' do
      it 'Titleが未入力の場合、Blogが編集されないこと' do; end
      it 'Contentが未入力の場合、Blogが編集されないこと' do; end
    end
  end

  describe 'Blog削除' do
    context '正常系' do
      it 'Blogが削除されること' do; end
    end
  end
end
